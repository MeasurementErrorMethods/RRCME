% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap_estimators.R
\name{RunRCBootstrap}
\alias{RunRCBootstrap}
\alias{RunRSRCBootstrap}
\alias{RunRakingBootstrap}
\alias{RunCompleteCaseBootstrap}
\alias{RunNaiveBootstrap}
\title{Calculates bootstrap estimates for all methods}
\usage{
RunRCBootstrap(all_dat, inds, sampling_type)

RunRSRCBootstrap(all_dat, inds, sampling_type, beta_x_start, beta_z_start)

RunRakingBootstrap(all_dat, inds, mod_rake, sampling_type)

RunCompleteCaseBootstrap(all_dat, inds, sampling_type)

RunNaiveBootstrap(all_dat, inds)
}
\arguments{
\item{all_dat}{Full, original dataset}

\item{inds}{Vector of indices defining bootstrap sample}

\item{sampling_type}{String indicating either simple random
sampling or case-cohort sampling}

\item{beta_x_start}{Initial guess for beta_x in optimization}

\item{beta_z_start}{Initial guess for beta_z in optimization}

\item{mod_rake}{String indicating which model to get influence
functions from}

\item{dat_valid}{Original validation subset}
}
\value{
A vector of bootstrap beta_x and beta_z estimates
}
\description{
These unctions that implement the bootstrap for all considered methods
Note: each bootstrap is stratified on inclusion into the
validation subset (and on case status for case-cohort sampling)
}
\details{
\code{RunRCBootstrap} implements the bootstrap for the RC methods

\code{RunRSRCBoostrap} implements the boostrap for the RSRC methods

\code{RunRakingBootstrap} implements the bootstrap for the raking
methods

\code{RunCompleteCaseBootstrap} implements the bootstrap for the
complete case analysis

\code{RunNaiveBoostrap} implements the bootstrap for the naive
analysis
}
