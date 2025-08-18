Title ""

Controls {
}

IOControls {
	outputFile = "/home/mvm7218/IEEE_DIU_Webinar/20nm_NFET"
	EnableSections
}

Definitions {
	Constant "Subs_ConstantProfileDefinition_1" {
		Species = "BoronActiveConcentration"
		Value = 1e+15
	}
	Constant "D_ConstantProfileDefinition_1" {
		Species = "PhosphorusActiveConcentration"
		Value = 1e+19
	}
	Constant "S_ConstantProfileDefinition_1" {
		Species = "PhosphorusActiveConcentration"
		Value = 1e+19
	}
	Refinement "Channel_Region_def" {
		MaxElementSize = ( 0.001 0.001 )
		MinElementSize = ( 0.001 0.001 )
	}
	Refinement "RefinementDefinition_2" {
		MaxElementSize = ( 0.01 0.01 )
		MinElementSize = ( 0.01 0.01 )
	}
	Refinement "RefinementDefinition_1" {
		MaxElementSize = ( 0.01 0.01 )
		MinElementSize = ( 0.01 0.01 )
	}
}

Placements {
	Constant "Subs_ConstantProfilePlacement_1" {
		Reference = "Subs_ConstantProfileDefinition_1"
		EvaluateWindow {
			Element = region ["region_1"]
		}
	}
	Constant "D_ConstantProfilePlacement_1" {
		Reference = "D_ConstantProfileDefinition_1"
		EvaluateWindow {
			Element = Rectangle [(0.07 0.025) (0.12 0.04)]
		}
	}
	Constant "S_ConstantProfilePlacement_1" {
		Reference = "S_ConstantProfileDefinition_1"
		EvaluateWindow {
			Element = Rectangle [(0 0.025) (0.05 0.04)]
		}
	}
	Refinement "Channel_Region" {
		Reference = "Channel_Region_def"
		RefineWindow = Rectangle [(0.03 0.04) (0.09 0.025)]
	}
	Refinement "RefinementPlacement_2" {
		Reference = "RefinementDefinition_2"
		RefineWindow = region ["region_2"]
	}
	Refinement "RefinementPlacement_1" {
		Reference = "RefinementDefinition_1"
		RefineWindow = region ["region_1"]
	}
}

