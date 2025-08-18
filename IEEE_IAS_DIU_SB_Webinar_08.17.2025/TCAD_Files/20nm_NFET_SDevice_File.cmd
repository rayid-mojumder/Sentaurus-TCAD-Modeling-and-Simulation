File {
  * Input Files
  Grid =    "20nm_NFET_msh.tdr"
    
  * Output Files
  Current = "dgs.plt"
  Plot =    "dgs.tdr"
  Output =  "dgs.log"
}
 
 Electrode {
 { Name="source"   Voltage=0.0 }
 { Name="drain"  Voltage=0.0 }
 { Name="gate"  Workfunction=4.4 Voltage=0.0 } 
}


Physics {
  Mobility (DopingDep HighFieldSat Enormal(Lombardi))
   EffectiveIntrinsicDensity (BandGapNarrowing (OldSlotboom))
  Fermi
}

Physics( Material = "Silicon" ) {
 MLDA
}

Plot{
*-Carrier Densities:
  eDensity 
  hDensity
 *EffectiveIntrinsicDensity IntrinsicDensity
 *eEquilibriumDensity hEquilibriumDensity

*-Currents and current components:
  Current/Vector 
  eCurrent/Vector 
  hCurrent/Vector
 *ConductionCurrent/Vector DisplacementCurrent/Vector
  eMobility 
  hMobility
  eVelocity 
  hVelocity

*-Fields, Potentials and Charge distributions
  ElectricField/Vector 
  Potential 
  eQuasiFermi 
  hQuasiFermi
 *SpaceCharge

*-Driving forces
 *eGradQuasiFermi/Vector hGradQuasiFermi/Vector
  eEparallel 
  hEparallel 
  eENormal 
  hENormal
 *eEffectiveField hEffectiveField

*-Temperatures
 *LatticeTemperature
 *eTemperature hTemperature

*-Generation/Recombination
 *SRHRecombination
 *Band2Band 
 *AugerRecombination 
 *RadiativeRecombination
 *AvalancheGeneration 
 *eAvalancheGeneration  
 *hAvalancheGeneration
 *TotalRecombination
 *eLifeTime hLifeTime
 *SurfaceRecombination

*-Doping Profiles
  Doping 
  DonorConcentration 
  AcceptorConcentration

*-Band structure
 *BandGap 
 *BandGapNarrowing
 *ElectronAffinity
  ConductionBandEnergy 
  ValenceBand

*-Composition
 *xMoleFraction 
 *yMoleFraction

*-Traps
 *eTrappedCharge hTrappedCharge
 *eGapStatesRecombination hGapStatesRecombination

*-Tunneling
 *BarrierTunneling eBarrierTunneling hBarrierTunneling
 *eDirectTunnel hDirectTunnel
}

Math{
   TensorGridAniso
   Extrapolate
   Notdamped=99
   Iterations=15
   RelErrControl   
   digits=7
}

Solve {
	Coupled (Iterations=100000 LinesearchDamping=0.01)  {Poisson}
	Coupled (Iterations=100) {Poisson Electron Hole }

	****************************************************************
	* Zero bias plot
	****************************************************************
	Plot(FilePrefix="Zero_Bias")
	
	****************************************************************
	* Put -0.400 V on gate and 0.700 V on drain
	****************************************************************
	NewCurrent="InitialCurrent_"
	Quasistationary (
		InitialStep=0.02 Minstep=1e-4 MaxStep=0.05 Increment=1.7
                Goal {Name="gate" Voltage=-0.400}
                Goal {Name="drain" Voltage=0.700}
     	) {
		Coupled { Poisson Electron Hole } 
	}

	****************************************************************
	* Ramp gate to 1 V in 15 mV steps
	****************************************************************
	NewCurrent="Id_Vg_ramp_"
	Quasistationary (
		InitialStep=0.015 Minstep=0.015 MaxStep=0.015 Increment=1
		Goal {Name="gate" Voltage=1}
	) {
		Coupled {Poisson Electron Hole } 
		Plot(FilePrefix="Gateramp_" NoOverWrite Time=(Range=(-0.250 1.0) Intervals=10))
	}
}







