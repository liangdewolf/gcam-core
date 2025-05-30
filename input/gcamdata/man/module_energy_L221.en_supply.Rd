% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zenergy_L221.en_supply.R
\name{module_energy_L221.en_supply}
\alias{module_energy_L221.en_supply}
\title{module_energy_L221.en_supply}
\usage{
module_energy_L221.en_supply(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{L221.SectorLogitTables[[ curr_table ]]$data}, \code{L221.Supplysector_en}, \code{L221.SectorUseTrialMarket_en}, \code{L221.SubsectorLogitTables[[ curr_table ]]$data}, \code{L221.SubsectorLogit_en}, \code{L221.SubsectorShrwt_en}, \code{L221.SubsectorShrwtFllt_en}, \code{L221.SubsectorInterp_en}, \code{L221.SubsectorInterpTo_en}, \code{L221.StubTech_en}, \code{L221.GlobalTechCoef_en}, \code{L221.GlobalTechCost_en}, \code{L221.GlobalTechShrwt_en}, \code{L221.PrimaryConsKeyword_en}, \code{L221.StubTechFractSecOut_en}, \code{L221.StubTechFractProd_en}, \code{L221.StubTechFractCalPrice_en}, \code{L221.Rsrc_en}, \code{L221.RsrcPrice_en}, \code{L221.Production_unoil}. The corresponding file in the
original data system was \code{L221.en_supply.R} (energy level2).
}
\description{
Writes all energy supply sector outputs.
}
\details{
This chunk creates level 2 output files for energy supply. It creates supply sector information,
subsector logit exponents, subsector shareweight and interpolation, and stubtech info by writing assumption file
information to all model periods and regions. It creates global tech coef, costs, and shareweights
by interpolating assumptions.
}
\author{
JDH Nov 2017
}
