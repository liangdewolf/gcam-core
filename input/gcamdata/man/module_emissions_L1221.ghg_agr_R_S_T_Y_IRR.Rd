% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zemissions_L1221.ghg_agr_R_S_T_Y_IRR.R
\name{module_emissions_L1221.ghg_agr_R_S_T_Y_IRR}
\alias{module_emissions_L1221.ghg_agr_R_S_T_Y_IRR}
\title{module_emissions_L1221.ghg_agr_R_S_T_Y_IRR}
\usage{
module_emissions_L1221.ghg_agr_R_S_T_Y_IRR(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{L1221.ghg_tg_R_agr_C_Y_GLU_IRR}. The corresponding file in the
original data system was \code{L1221.ghg_agr_R_S_T_Y_IRR.R} (emissions level1).
}
\description{
Downscale emissions to irrigated/rainfed technologies on the basis of production share.
}
\details{
Downscales emissions to irrigated/rainfed technologies by production share.
Multiply total ag emissions (\code{module_emissions_L112.ceds_ghg_en_R_S_T_Y}) by production share by irr/rfd (\code{L1211.ag_irrShare_R_C_Y_GLU_irr})
which are both calculated in \code{\link{module_emissions_L122.ghg_agr_R_S_T_Y}} and
\code{\link{module_emissions_L1211.nonco2_awb_R_S_T_Y_IRR}}.
}
\author{
RMH AUG 2017
}
