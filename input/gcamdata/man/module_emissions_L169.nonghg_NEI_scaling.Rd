% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zemissions_L169.nonghg_NEI_scaling.R
\name{module_emissions_L169.nonghg_NEI_scaling}
\alias{module_emissions_L169.nonghg_NEI_scaling}
\title{module_emissions_L169.nonghg_NEI_scaling}
\usage{
module_emissions_L169.nonghg_NEI_scaling(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{L169.NEI_1990_2017_GCAM_sectors_unscaled}
}
\description{
Further processes the NEI data to get a full timeseries for 1990 - 2017.
The NEI data is scaled to EPA Tier 1 for HIGHWAY VEHICLES, OFF-HIGHWAY, and FUEL COMB. ELEC. UTIL.
It is linearly interpolated between NEI years (2008 - 2017), and extrapolated back to 1990 based on
the 2008 sector and fuels shares.
}
\details{
Non-CO2 emissions from NEI interpolated and scaled to EPA Tier 1
}
\author{
MAW December 2021
}
