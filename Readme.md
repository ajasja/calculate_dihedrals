 
#Calculates side-chain dihedral (torsion) angles.
 

##example use:
 

	#load the module (must be in the correct directory)
	source calculate_dihedrals.tcl
	#load a structure
	mol addfile {1IAZ} type {webpdb} 
	#Print the first ten backbone and side-chain dihedral angles
	print_sidechain_dihedrals A "residue 1 to 10" top 



##VMD  --- start of VMD description block

	Name:
	  calculate dihedrals 1.0
	Synopsis:
	  calcualtes side-chain dihedral (torsion) angles
	Version:
	  1.0
	Uses VMD version:
	  1.8
	Ease of use:
	  1
	Procedures:
	 print_sidechain_dihedrals -- calcualtes the dihedral angles
	 
	
	Example output:
	   1 SER        0 999.0-167.0  59.1
	   2 ALA        0 -91.9  -9.4
	   3 ASP        0 -87.6  75.2 -59.1 -83.8
	   4 VAL        0-125.6  46.4-155.2
	   5 ALA        0-102.2 -44.7
	   6 GLY        0 -78.6 -61.4
	   7 ALA        0 -82.9  62.0
	   8 VAL        0 -81.7 154.2 -95.1
	   9 ILE        0-112.6 159.0  77.1 176.3
	  10 ASP        0 -74.5 162.7 -67.1 110.5
	Files: 
	 <li> calcualte_dihedrals.tcl -- calcualtes the dihedral angles
	 <li> dihedral_angles_atom_names.tcl -- procedures to get atom indices of dihedral angles
	Authors: 
	 Ajasja Ljubetic (ajasja.ljubetic@gmail.com)
VMD  --- end of block
