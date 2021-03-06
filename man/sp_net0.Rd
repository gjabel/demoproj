% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sp_net.R
\name{sp_net0}
\alias{sp_net0}
\alias{sp_net}
\title{Simple Projection Model Based on Crude Demographic Rates and Net Migration Counts.}
\usage{
sp_net0(n = NULL, N0 = NULL, b = NULL, d = NULL, M = NULL)

sp_net(n = NULL, N0 = NULL, b = NULL, d = NULL, M = NULL)
}
\arguments{
\item{n}{Numeric value for the number of projection periods to run the model.}

\item{N0}{Numeric value for the initial total population size.}

\item{b, d, M}{Numeric value for the crude birth and death rates and net migration counts in each projection period.

If \code{sp_net0} is used a single value is required.

If \code{sp_net} is used a vector of period specific rates (and net migration counts) is required. If a single rate values (and net migration count)  are passed to \code{sp_net} a vector based on constant assumptions in all future rates (and net migration counts) will be constructed.}
}
\value{
A vector of length \code{n + 1} containing the initial total population size (\code{N0}) and the projected total population sizes given \code{b}, \code{d} and \code{M}.

\code{sp_net0} produces population projections based stricly on constant future rates and counts.

\code{sp_net} produces population projections based non-constant future rates and counts.
}
\description{
A simple projection model based on crude demographic rates and net migration counts,
\deqn{ N_{t+1} = \left( N_t + \frac{M_{t,t+1}}{2} \right) \times (1 + b_{t,t+1} - d_{t,t+1}) + \frac{M_{t,t+1}}{2} }
}
\examples{
# constant future assumptions
sp_net0(n = 20, N0 = 100, b = 0.04, d = 0.02, M = 3)

# non-constant future assumptions
bb <- rnorm(n = 20, mean = 0.04, sd = 0.001)
MM <- rnorm(n = 20, mean = 3)
sp_net(n = 20, N0 = 100, b = bb, d = 0.02, M = MM)
}
