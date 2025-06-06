% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zaglu_L221.land_input_1.R
\name{module_aglu_L221.land_input_1}
\alias{module_aglu_L221.land_input_1}
\title{module_aglu_L221.land_input_1}
\usage{
module_aglu_L221.land_input_1(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{curr_table$data}, \code{L221.LN0_Logit}, \code{L221.LN0_Land}, \code{L221.LN0_SoilTimeScale}, \code{curr_table$data}, \code{L221.LN1_ValueLogit}, \code{L221.LN1_HistUnmgdAllocation}, \code{L221.LN1_UnmgdAllocation}, \code{L221.LN1_UnmgdCarbon}. The corresponding file in the
original data system was \code{L221.land_input_1.R} (aglu level2).
}
\description{
Produce L221.LN0_Logit, L221.LN0_Land, L221.LN0_SoilTimeScale, L221.LN1_ValueLogit,
L221.LN1_HistUnmgdAllocation, L221.LN1_UnmgdAllocation, and L221.LN1_UnmgdCarbon.
}
\details{
\itemize{
\item{"L221.LN0_Logit Logit exponent of the top-level (zero) land nest by region.
AgLu regions are given externally defined constant logit information."}
\item{"L221.LN0_Land Total regional land allocation in top level nest.
L125 land cover data is assigned proper GCAM region names and nest id."}
\item{"L221.LN0_SoilTimeScale Soil time scale by region.
External soil time scale assumptions for each AGLU region."}
\item{"L221.LN1_ValueLogit Unmanaged land value by region and GLU, and logit exponent of first nest.
L131 land value data is joined with LandNode Logit assumptions.A minimum value is set to ensure all
regins have a nonzero land value."}
\item{"L221.LN1_HistUnmgdAllocation Historical land cover fora unmanaged land (LT_GLU) in the first nest by region.
Historical land cover for unmanaged land in the first nest, from L125 land cover data."}
\item{"L221.LN1_UnmgdAllocation Land cover in the model base periods for unmanaged land (LT_GLU) in the first nest by region.
Land cover in the model base periods for unmanaged land in the first nest, from L125 land cover data."}
\item{"L221.LN1_UnmgdCarbon Carbon content for unmanaged land (LT_GLU) in first nest by region.
Carbon content info for unmanaged land in the first nest including soil and vegetative carbon,
from L125 land cover data, L121 carbon content data, and GCAMLandLeaf_CdensityLT assumptions."}
}
}
\author{
ACS August 2017 XZ (2022)
}
