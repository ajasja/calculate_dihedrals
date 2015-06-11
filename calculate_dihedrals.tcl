# calculates side-chain dihedral (torsion) angles.
# example use:
# source calculate_dihedrals.tcl
# print_sidechain_dihedrals P "resid 1 to 10" top dihedral.angles

#source calculate_dihedrals.tcl



#VMD  --- start of VMD description block
#Name:
#  calculate dihedrals 1.0
#Synopsis:
#  calcualtes side-chain dihedral (torsion) angles
#Version:
#  1.0
#Uses VMD version:
#  1.8
#Ease of use:
#  1
#Procedures:
# print_sidechain_dihedrals -- calcualtes the dihedral angles
 

#Example output:
#   1 SER        0 999.0-167.0  59.1
#   2 ALA        0 -91.9  -9.4
#   3 ASP        0 -87.6  75.2 -59.1 -83.8
#   4 VAL        0-125.6  46.4-155.2
#   5 ALA        0-102.2 -44.7
#   6 GLY        0 -78.6 -61.4
#   7 ALA        0 -82.9  62.0
#   8 VAL        0 -81.7 154.2 -95.1
#   9 ILE        0-112.6 159.0  77.1 176.3
#  10 ASP        0 -74.5 162.7 -67.1 110.5
#Files: 
# <li> calcualte_dihedrals.tcl -- calcualtes the dihedral angles
# <li> dihedral_angles_atom_names.tcl -- procedures to get atom indices of dihedral angles
#Authors: 
# Ajasja Ljubetiè (ajasja.ljubetic@gmail.com)
#\VMD  --- end of block


source dihedral_angles_atom_names.tcl

proc get_backbone_dihedral_indices {resid resname chainname mol} {
  
  set ressel [atomselect $mol "chain $chainname and resid $resid and name CA"]
  set residue_index [$ressel get residue]
  $ressel delete
  
  set prev_residue_index [expr $residue_index-1]
  set next_residue_index [expr $residue_index+1]
  
  #Nitrogen
  set atomsel [atomselect $mol "chain $chainname and residue $residue_index and name \"N\""]
  set Ni [$atomsel get index]
  $atomsel delete

  #CA
  set atomsel [atomselect $mol "chain $chainname and residue $residue_index and name \"CA\""]
  set CAi [$atomsel get index]
  $atomsel delete
  
  #C(O)
  set atomsel [atomselect $mol "chain $chainname and residue $residue_index and name \"C\""]
  set Ci [$atomsel get index]
  $atomsel delete
  
  

  #if prevous residue exists
  
  if {$prev_residue_index>=0} then {
    
    #previous C(O)
    set atomsel [atomselect $mol "chain $chainname and residue $prev_residue_index and name \"C\""]
    set pCi [$atomsel get index]
    $atomsel delete

    
    lappend phi $pCi $Ni $CAi $Ci
  } else  {
    set phi {}
  }


  #next N
  set atomsel [atomselect $mol "chain $chainname and residue $next_residue_index and name \"N\""]
  set nNi [$atomsel get index]
  $atomsel delete

  #next CA
  set atomsel [atomselect $mol "chain $chainname and residue $next_residue_index and name \"CA\""]
  set nCAi [$atomsel get index]
  $atomsel delete
  

  #if next residue exists
  if {$nNi>0} then {
    lappend psi $Ni $CAi $Ci $nNi
    lappend omega $CAi $Ci $nNi $nCAi
  } else  {
    set psi {}
    set omega {}
  }  
  
  lappend result $phi $psi $omega 
  return $result  
  

}

proc get_sidechain_inidces {resid resname chain mol} {

  lappend result $resid $resname $chain
  lappend result [get_backbone_dihedral_indices $resid $resname $chain $mol]
  
  #puts $result
  switch $resname {
    GLY {lappend result [get_GLY_sidechain_indicies $resid $resname $chain $mol]}
    ALA {lappend result [get_ALA_sidechain_indicies $resid $resname $chain $mol]}
    SER {lappend result [get_SER_sidechain_indicies $resid $resname $chain $mol]}
    CYS {lappend result [get_CYS_sidechain_indicies $resid $resname $chain $mol]}
    VAL {lappend result [get_VAL_sidechain_indicies $resid $resname $chain $mol]}
    THR {lappend result [get_THR_sidechain_indicies $resid $resname $chain $mol]}
    ILE {lappend result [get_ILE_sidechain_indicies $resid $resname $chain $mol]}
    PRO {lappend result [get_PRO_sidechain_indicies $resid $resname $chain $mol]}
    MET {lappend result [get_MET_sidechain_indicies $resid $resname $chain $mol]}
    ASP {lappend result [get_ASP_sidechain_indicies $resid $resname $chain $mol]}
    ASN {lappend result [get_ASN_sidechain_indicies $resid $resname $chain $mol]}
    LEU {lappend result [get_LEU_sidechain_indicies $resid $resname $chain $mol]}
    LYS {lappend result [get_LYS_sidechain_indicies $resid $resname $chain $mol]}
    GLU {lappend result [get_GLU_sidechain_indicies $resid $resname $chain $mol]}
    GLN {lappend result [get_GLN_sidechain_indicies $resid $resname $chain $mol]}
    ARG {lappend result [get_ARG_sidechain_indicies $resid $resname $chain $mol]}
    
    HIS {lappend result [get_HIS_sidechain_indicies $resid $resname $chain $mol]}
    HSP {lappend result [get_HIS_sidechain_indicies $resid $resname $chain $mol]}
    HSD {lappend result [get_HIS_sidechain_indicies $resid $resname $chain $mol]}
    
    PHE {lappend result [get_PHE_sidechain_indicies $resid $resname $chain $mol]}
    TYR {lappend result [get_TYR_sidechain_indicies $resid $resname $chain $mol]}
    TRP {lappend result [get_TRP_sidechain_indicies $resid $resname $chain $mol]}
    UNK {lappend result [get_UNK_sidechain_indicies $resid $resname $chain $mol]}
    
    CMT {lappend result [get_CMT_sidechain_indicies $resid $resname $chain $mol]}
    CMTS {lappend result [get_CMT_sidechain_indicies $resid $resname $chain $mol]}
    } 
    

    return $result
}

proc get_all_sidechain_indices {resinfos chain mol} {
  set result {}
  foreach {resid resname} $resinfos {
     #puts  "$resid $resname $chain $mol"
     lappend result [get_sidechain_inidces $resid $resname $chain $mol] 
  }
  return $result
}




proc print_all_sidechain_dihedrals {indices frame_num output_file} {
  #puts $indices
  foreach {resid resname chain backbone_dihedrals dihedrals} $indices {
    #puts "| $resid $resname $chain $backbone_dihedrals $dihedrals|"
    
    
    set phi_indices [lindex $backbone_dihedrals 0]
    set psi_indices [lindex $backbone_dihedrals 1]
    #set omega_inidces [lindex backbone_dihedrals 2/]
    
    #first phi doesent exist
    if {[llength $phi_indices]} then {              
      set phi [measure dihed $phi_indices]
    } else {
      set phi 999
    }
    
    #lst psi doesent exist
    if {[llength $psi_indices]} then {
      set psi [measure dihed $psi_indices]
    } else {
      set psi 999
    }
    
    set outstring [format "%4.d%4.4s%9.d%6.1f%6.1f" $resid $resname $frame_num $phi $psi]
    #if not empty list
    
    if {[llength $dihedrals]} {
      foreach dihedral $dihedrals {
        set val [measure dihed $dihedral]
        set val_str [format "%6.1f" $val]        
        append outstring $val_str
      } ;#foreach dihedral      
    } ;# if not empty list
    puts $output_file $outstring
  } ;#foreach residue 
}

puts "calculate dihedrals 1.0"
puts "proc print_sidechain_dihedrals {chain residues {mol top} {output_file_name \"stdout\"} {first_frame 0} {last_frame -1} {stride 1} {print_progress 0}}"

proc print_sidechain_dihedrals {chain residues {mol top} {output_file_name "stdout"} {first_frame 0} {last_frame -1} {stride 1} {print_progress 0}} {
  
  #get residue list
  set residues [atomselect $mol "chain $chain and $residues and name CA"]
  set resinfos [join [$residues get {resid resname}]]
  #puts $resinfos
  
  if {($print_progress>0) && ($output_file_name != "stdout")} then {
       set counter [expr [llength $resinfos]/2]
       puts "Getting indices for $counter residues."  
     }
  #get the atom indices of the dehidral (torsion) angles
  set indices [join [get_all_sidechain_indices $resinfos $chain $mol]]
  
  #puts $indices
  if {($print_progress>0) && ($output_file_name != "stdout")} then {
       set counter [expr [llength $resinfos]/2]
       puts "Done."  
     }


  
  #set output
  if {$output_file_name == "stdout"} then {
    set output_file stdout
  } else { 
    set output_file [open $output_file_name w]}
  
  
  #get current mol frame
  set old_frame [molinfo $mol get frame] 
  #don't update display
  display update off
  
  #default last_frame is the number of all frames
  if {$last_frame == -1} then {
    set last_frame [expr [molinfo $mol get numframes] -1]}
  
  set counter 0
  #iterate along through all frames
  for {set frame $first_frame} {$frame <= $last_frame} {incr frame $stride} {
     incr counter
     if {($print_progress>0) && ($counter>=$print_progress) && ($output_file_name != "stdout")} then {
       puts "Working on frame $frame."
       set counter 0
     }
      
     molinfo $mol set frame $frame
     print_all_sidechain_dihedrals $indices $frame $output_file
  }
  
 
  #restore frame
  molinfo $mol set frame $old_frame 
  #restore update
  display update on
  
  if {$output_file_name != "stdout"} then {
  close $output_file}
  $residues delete 
}



