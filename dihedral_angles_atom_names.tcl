proc get_GLY_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
      return $result
    }

proc get_ALA_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
      return $result
    }

proc get_SER_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"OG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_CYS_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_VAL_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_THR_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"OG1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_ILE_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD.?\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_PRO_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_MET_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CE\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_ASP_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"OD1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_ASN_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"OD1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_LEU_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_LYS_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CE\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi4
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CE\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"NZ\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_GLU_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"OE1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_GLN_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"OE1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_ARG_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"NE\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi4
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"NE\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CZ\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_HIS_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"ND1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_PHE_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_TYR_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_TRP_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CD1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

proc get_CMT_sidechain_indicies {resid resname chainname mol} {
      set result {}
      
        #do angle Chi1
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"N\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi2
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CA\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"S1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi3
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"CB\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"S1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"C10\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi4
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"SG\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"S1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"C10\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"C3\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
        #do angle Chi5
        #
        
        set angle_list {}
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"S1\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"C10\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"C3\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
          set atomsel [atomselect $mol "chain $chainname and resid $resid and name \"C4\""]
          lappend angle_list [$atomsel get index]
          $atomsel delete
        
        lappend result $angle_list
      
      return $result
    }

