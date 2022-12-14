% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getGenes.R
\name{getGenes}
\alias{getGenes}
\title{getGenes}
\usage{
getGenes(
  midas_merge_dir,
  candidate = "all",
  pa = "presabs",
  km = 20,
  filUp = 1,
  filDown = 0,
  heatmap = FALSE,
  seed = 1
)
}
\arguments{
\item{midas_merge_dir}{output directory of merge_midas.py}
}
\description{
Obtain gene matrix from midas merge directory from MIDAS.
Additionally, heatmap can be stored with clustering information.
}
