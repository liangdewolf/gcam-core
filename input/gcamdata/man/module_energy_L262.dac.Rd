% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zenergy_L262.dac.R
\name{module_energy_L262.dac}
\alias{module_energy_L262.dac}
\title{module_energy_L262.dac}
\usage{
module_energy_L262.dac(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{L262.SectorLogitTables[[ curr_table ]]$data}, \code{L262.Supplysector_dac}, \code{L262.FinalEnergyKeyword_dac},
\code{L262.SubsectorLogitTables[[ curr_table ]]$data}, \code{L262.SubsectorLogit_dac}, \code{L262.SubsectorShrwtFllt_dac},
\code{L262.SubsectorInterp_dac}, \code{L262.StubTech_dac}, \code{L262.GlobalTechShrwt_dac}, \code{L262.GlobalTechCoef_dac},
\code{L262.GlobalTechCost_dac}, \code{L262.GlobalTechCapture_dac}, \code{L262.StubTechProd_dac}, \code{L262.StubTechCalInput_dac_heat},
\code{L262.StubTechCoef_dac}, \code{L262.PerCapitaBased_dac}, \code{L262.BaseService_dac}, \code{L262.PriceElasticity_dac}, \code{object}.
The corresponding file in the original data system was \code{L262.dac.R} (energy level2).
}
\description{
Compute a variety of final energy keyword, sector, share weight, and technology information for dac-related GCAM inputs.
}
\details{
The chunk provides final energy keyword, supplysector/subsector information, supplysector/subsector interpolation information, global technology share weight, global technology efficiency, global technology coefficients, global technology cost, price elasticity, stub technology information, stub technology interpolation information, stub technology calibrated inputs, and etc for dac sector.
}
\author{
JF March 2021
}
