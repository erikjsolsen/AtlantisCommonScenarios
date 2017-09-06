
# R version 3.1.2 64 bit. 
#
#  Isaac Kaplan and Erik Olsen Sept 2017
#--------------
# run names


 # "OA_005"
 # "OA_01"
 # "SB_15"
 # "SB_3"
 # "Fcur_all_05"
 # "Fcur_all_0"
 # "Fcur_all_1"
 # "Fcur_all_2"
 # "Fcur_dem_05"
 # "Fcur_dem_0"
 # "Fcur_dem_2"
 # "Fcur_inV_05"
 # "Fcur_inV_0"
 # "Fcur_inV_2"
 # "Fcur_Lpel_05"
 # "Fcur_Lpel_0"
 # "Fcur_Lpel_2"
 # "Fcur_Spel_05"
 # "Fcur_Spel_0"
 # "Fcur_Spel_2"
  # "mpa_25"
 # "mpa_50"
  # "mpa_10"

source("R\\calc.pH.effect.R")
source("R\\PlotGuildBiomassOneScenarioVsBaseCase.r")
source("R\\radarchartspecifypointsize.r")
source("R\\get_indicators.r")
source("R\\plot_indicators.r")
source("R\\PlotIndicatorsOneScenarioVsBaseCase.r")
source("R\\vioplotWideBars.r")
source("R\\read_lookup.r")


require(vioplot)
require(fmsb)
require(dichromat)


#-------------------
# Ocean acidification

PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "OA_01", regionNames = list("CAM_", "CalCu_","GoMex_","GOC_","NOBA_", "NEUSFixedF_","NEUSDyn_","GuamAtlantis_", "AustSE_","AustSE_DynEffort_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "OA_005", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSFixedF_", "NEUSDyn_","GuamAtlantis_", "AustSE_","AustSE_DynEffort_"))


PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "OA_01", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_","NEUSFixedF_","NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "OA_005", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_","NEUSFixedF_","NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49)
# autodetect axis limits
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "OA_01", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_","NEUSFixedF_","NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49,autodetectAxisLimits = TRUE)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "OA_005", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_","NEUSFixedF_","NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49,autodetectAxisLimits = TRUE)





#--------------------------------
# Fishign relative to Current day: 
# Fcurr_all
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_all_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_all_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_all_1", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_all_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))

# 
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_all_05", regionNames = list("CAM_", "CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_all_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_","GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_all_1", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_","GuamAtlantis_", "AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_all_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_","GuamAtlantis_", "AustSE_"),yr.start=40,yr.end=49)



# FCUR DEMERSAL. 
# 
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_dem_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_dem_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_dem_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))

# # FCUR DEMERSAL. 
#   
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_dem_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_dem_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_dem_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)





# FCUR LARGE PELAGIC, guam does not have these species in model
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_Lpel_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_Lpel_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_Lpel_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "AustSE_"))

PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_Lpel_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_Lpel_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_Lpel_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "AustSE_"),yr.start=40,yr.end=49)



# FCUR SMALL PELAGIC
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_Spel_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_Spel_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_Spel_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))

# ----
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_Spel_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_Spel_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_Spel_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)



# FCUR INVERTEBRATE

PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_inV_05", regionNames = list("CAM_","CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_inV_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "Fcur_inV_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_", "AustSE_"))

# 
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_inV_05", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_","GuamAtlantis_", "AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_inV_0", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "Fcur_inV_2", regionNames = list("CAM_","CalCu_","GoMex_","GOC_", "NEUSFixedF_", "GuamAtlantis_","AustSE_"),yr.start=40,yr.end=49)



#--------------------------------------
# MPAs

PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "mpa_10", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "mpa_25", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"))
PlotGuildBiomassOneScenarioVsBaseCase(thisRunName = "mpa_50", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"))

# ----

PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "mpa_10", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "mpa_25", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "mpa_50", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49)
# Auto detect limit axes: 
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "mpa_10", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49,autodetectAxisLimits = TRUE)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "mpa_25", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49,autodetectAxisLimits = TRUE)
PlotIndicatorsOneScenarioVsBaseCase(thisRunName = "mpa_50", regionNames = list("CAM_","CalCu_","GoMex_","GOC_","NOBA_", "NEUSDyn_", "GuamAtlantis_", "AustSE_","AustSE_DynEffort_"),yr.start=40,yr.end=49,autodetectAxisLimits = TRUE)

