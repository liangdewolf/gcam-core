% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zenergy_L232.other_industry.R
\name{module_energy_L232.other_industry}
\alias{module_energy_L232.other_industry}
\title{module_energy_L232.other_industry}
\usage{
module_energy_L232.other_industry(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{L232.SectorLogitTables[[ curr_table ]]$data},
\code{L232.Supplysector_ind}, \code{L232.SubsectorLogitTables[[ curr_table ]]$data},
\code{L232.SubsectorLogit_ind}, \code{L232.FinalEnergyKeyword_ind},
\code{L232.SubsectorShrwtFllt_ind}, \code{L232.SubsectorInterp_ind},
\code{L232.StubTech_ind}, \code{L232.GlobalTechShrwt_ind}, \code{L232.StubTechInterp_ind},
\code{L232.GlobalTechEff_ind}, \code{L232.GlobalTechCoef_ind}, \code{L232.GlobalTechCost_ind},
\code{L232.GlobalTechSecOut_ind}, \code{L232.GlobalTechCSeq_ind},
\code{L232.StubTechCalInput_indenergy}, \code{L232.StubTechCalInput_indfeed},
\code{L232.StubTechProd_industry}, \code{L232.StubTechCoef_industry},
\code{L232.FuelPrefElast_indenergy}, \code{L232.PerCapitaBased_ind},
\code{L232.PriceElasticity_ind}, \code{L232.BaseService_ind},
\code{L232.IncomeElasticity_ind_gcam3}, \code{L232.IncomeElasticity_ind_gssp1},
\code{L232.IncomeElasticity_ind_gssp2}, \code{L232.IncomeElasticity_ind_gssp3},
\code{L232.IncomeElasticity_ind_gssp4}, \code{L232.IncomeElasticity_ind_gssp5},
\code{L232.IncomeElasticity_ind_ssp1}, \code{L232.IncomeElasticity_ind_ssp2},
\code{L232.IncomeElasticity_ind_ssp3}, \code{L232.IncomeElasticity_ind_ssp4},
\code{L232.IncomeElasticity_ind_ssp5}, \code{object}. The corresponding file in the
original data system was \code{L232.industry.R} (energy level2).
}
\description{
Compute a variety of final energy keyword, sector, share weight, and technology information for industry-related GCAM inputs.
}
\details{
The chunk provides final energy keyword, supplysector/subsector information, supplysector/subsector interpolation information, supplysector/subsector share weights, global technology share weight, global technology efficiency, global technology coefficients, global technology cost, price elasticity, stub technology information, stub technology interpolation information, stub technology calibrated inputs, and etc.
}
\author{
LF October 2017
}
