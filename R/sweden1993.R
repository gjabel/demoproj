#' Swedish 1993 Demographic Data
#'
#' Gender age specific popoulation, mortality and fertitly rates in 1993.
#'
#' @source Box 6.1 (part 2), Box 6.1 (part 3) in Preston, S. H., Heuveline, P. and Guillot, M. (2001) Demography: Measuring and Modeling Population Processes. Surviorships calculated by hand.
#' @format A data frame with columns:
#' \describe{
#'  \item{age}{Age group.}
#'  \item{x}{Minimum age.}
#'  \item{Nx_f,Nx_m}{Female and male population sizes.}
#'  \item{Lx_f,Lx_m}{Female and male person years lived.}
#'  \item{fx}{Age specific fertitliy rate.}
#'  \item{Mx_f}{Female net migrant counts.}
#'  \item{sx_f,sx_m}{Female and male age specific survivorship rates.}
#' }
#' @examples
#' head(sweden1993)
"sweden1993"
