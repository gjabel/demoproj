% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sp_rate.R
\name{sp_rate0}
\alias{sp_rate0}
\alias{sp_rate}
\title{Simple Projection Model Based on Population Growth Rates}
\usage{
sp_rate0(n = NULL, N0 = NULL, r = NULL)

sp_rate(n = NULL, N0 = NULL, r = NULL)
}
\arguments{
\item{n}{Numeric value for the number of projection periods to run the model.}

\item{N0}{Numeric value for the initial total population size.}

\item{r}{Numeric value for the population growth rate in each projection period.

If \code{sp_rate0} is used a single value is required.

If \code{sp_rate} is used a vector of period specific rates is required. If a single rate value is passed to \code{sp_rate} a vector based on constant assumptions in all future rates will be constructed.}
}
\value{
A vector of length \code{n + 1} containing the initial total population size (\code{N0}) and the projected total population sizes given \code{r}.

\code{sp_rate0} produces population projections based strictly on constant future rates.

\code{sp_rate} produces population projections based non-constant future rates.
}
\description{
A simple projection model based on  population growth rates,
\deqn{ N_{t} = N_{t} \times (1 + r_{t,t+1}) }
}
\examples{
# constant future assumptions
sp_rate0(n = 20, N0 = 100, r = 0.05)

# non-constant future assumptions
rr <- rnorm(n = 20, mean = 0.05, sd = 0.01)
sp_rate(n = 20, N0 = 100, r = rr)
}
