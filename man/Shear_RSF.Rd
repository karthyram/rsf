% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R_SF.R
\name{Shear_RSF}
\alias{Shear_RSF}
\title{Shear Function}
\usage{
Shear_RSF(rsf_H1, rsf_H2)
}
\arguments{
\item{rsf_H1:}{rsf object already loaded into memory}

\item{rsf_H2:}{rsf object already loaded into memory}
}
\description{
Create a Shear map (rsf format) based on the two rsf files (rsf_H1,rsf_H2). It is recommended to have abs(H1-H2)>20m. the two rsf shoud be coherent (domain, and number of setors). The output is also in a rsf format.
}
\examples{
creat a shear map from the two rsf rsf87 and rsf137:
rsf_shear <- Shear_RSF(rsf87,rsf137)
}
\keyword{rsf,}
\keyword{shear}

