#!/bin/env jruby

# Script to calcualte dihedrals of a set of pdb files. The files must end in #framenumber#.dcd
# the directory is given as an argument

require 'java'
require 'pp'
require 'residue_constants'
require 'erb'
#load files based on the directory of the script
['jbcl-2.1.jar', 'monomers-2.1.jar'].each{|f| require File.join(File.dirname(__FILE__),f)}

java_import Java::jbcl::calc::structural::ChiAngle
java_import Java::jbcl::calc::structural::PhiAngle
java_import Java::jbcl::calc::structural::PsiAngle
java_import Java::jbcl::calc::structural::TorsionalAngle
java_import Java::jbcl::data::dict::Dictionary
java_import Java::jbcl::data::dict::Monomer

CMTS_chi_atom_names =  ["N", "CA", "CB", "SG", "S1", "C10", "C3", "C4"];
Rad2deg = 180.0/3.14159
Undefined_angle_value = 999



def cmts_chi_angles(residue)
  chi_atoms = CMTS_chi_atom_names.map { |name| residue.findAtom(name)  }
  return TorsionalAngle.create(chi_atoms)
end


def print_atom_names
  da = Dictionary.new(Dictionary::Dictionaries.findDictionary("DihedralAngles"));
 


  aas = Monomer.getStandardAminoAcids
  
  aas.each do |aa|
    keys = da.findKeys(aa.threeLetterCode)
    vals = keys.map { |key| val = da.findString(key)
      if key.length>3 then
        key+"="+val.gsub('_','.')
      else
        key+"="+val
      end
    }
    puts vals
  
  end
  puts "CMT=Chi1 Chi2 Chi3 Chi4 Chi5"
  5.times { |i| puts "CMT.Chi#{i}="+((0..3).to_a.map {|j| CMTS_chi_atom_names[i+j].gsub(' ','.')}.join(' ')) }
end #proc

#print_atom_names()

def atom_names_to_hash
  h = {}
  da = Dictionary.new(Dictionary::Dictionaries.findDictionary("DihedralAngles"));
  aas = Monomer.getStandardAminoAcids

  aas.each do |aa|
    keys = da.findKeys(aa.threeLetterCode)
    vals = keys.map { |key| h[key]= da.findString(key).gsub('_','.?')}
   
  end
  
  h["CMT"]="Chi1 Chi2 Chi3 Chi4 Chi5"
  5.times { |i| h["CMT.Chi#{i+1}"]=((0..3).to_a.map {|j| CMTS_chi_atom_names[i+j].gsub(' ','.?')}.join(' ')) }
  
  return h
end

#pp atom_names_to_hash

def atom_names_to_hirachical_hash
  h={}
  da = Dictionary.new(Dictionary::Dictionaries.findDictionary("DihedralAngles"));
  Residue_dihedral_names.each_pair{|aa_name,chi_names|
    if not aa_name=="CMT" then
      sub_hash = {}
      chi_names.each {|chi_name| sub_hash[chi_name]=da.findString("#{aa_name}.#{chi_name}").gsub('_','')}
      h[aa_name]=sub_hash
    end
  }
  sub_hash = {}
  #5.times { |i| sub_hash["Chi#{i+1}"]=((0..3).to_a.map {|j| CMTS_chi_atom_names[i+j].gsub(' ','.?')}.join(' ')) }
  5.times { |i| sub_hash["Chi#{i+1}"]=((0..3).to_a.map {|j| CMTS_chi_atom_names[i+j].strip}.join(' ')) }
  h["CMT"]=sub_hash
  return h

end
#pp atom_names_to_hirachical_hash

def print_aa_switch_statment
  da = Dictionary.new(Dictionary::Dictionaries.findDictionary("DihedralAngles"));
  aas = Monomer.getStandardAminoAcids

  aas.each do |aa|
    puts "#{aa.threeLetterCode} {lappend result [get_#{aa.threeLetterCode}_sidechain_indicies $resid $resname $chain $mol]}"

  end
  puts "CMT {lappend result [get_CMT_sidechain_indicies $resid $resname $chain $mol]}"
end

print_aa_switch_statment

def print_aas_get_indices
  aah = atom_names_to_hirachical_hash
  result_string = ""
  aah.each_pair  {|aa_name,angles|

    
    
    template = ERB.new File.new("dihedral_indices_template.erb").read, nil, '%<>>', 'result_string'
    result_string += template.result(binding) + "\n\n"
  }
 puts result_string
 File.open("dihedral_angles_atom_names.tcl", "w") do |f|
   f.write(result_string)
 end
end

print_aas_get_indices

