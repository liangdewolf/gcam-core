% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zenergy_L222.en_transformation.R
\name{module_energy_L222.en_transformation}
\alias{module_energy_L222.en_transformation}
\title{module_energy_L222.en_transformation}
\usage{
module_energy_L222.en_transformation(command, ...)
}
\arguments{
\item{command}{API command to execute}

\item{...}{other optional parameters, depending on command}
}
\value{
Depends on \code{command}: either a vector of required inputs,
a vector of output names, or (if \code{command} is "MAKE") all
the generated outputs: \code{L222.SectorLogitTables[[ curr_table ]]$data}, \code{L222.Supplysector_en},
\code{L222.SubsectorLogitTables[[ curr_table ]]$data}, \code{L222.SubsectorLogit_en}, \code{L222.SubsectorShrwt_en},
 \code{L222.SubsectorShrwtFllt_en}, \code{L222.SubsectorInterp_en}, \code{L222.SubsectorInterpTo_en},
 \code{L222.StubTech_en}, \code{L222.GlobalTechInterp_en}, \code{L222.GlobalTechCoef_en},
 \code{L222.GlobalTechCost_en}, \code{L222.GlobalTechShrwt_en}, \code{L222.GlobalTechCapture_en},
 \code{L222.GlobalTechShutdown_en}, \code{L222.GlobalTechSCurve_en}, \code{L222.GlobalTechLifetime_en},
 \code{L222.GlobalTechProfitShutdown_en}, \code{L222.StubTechProd_gasproc}, \code{L222.StubTechProd_refining},
  \code{L222.StubTechCoef_refining}, \code{L222.GlobalTechCost_low_en}. The corresponding file in the
original data system was \code{L222.en_transformation.R} (energy level2).
}
\description{
Prepare the assumptions and calibrated outputs for energy transformation supplysectors, subsectors, and technologies.
}
\details{
This chunk sets up the energy transformation global technology database as well as writing out assumptions to all regions for shareweights and logits.
Calibrated outputs for gas processing and oil refining as well as I:O coefficients are interpolated from historical values to base model years.
}
\author{
CWR Sept 2017
}
