% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R_SF.R
\name{RSF_plot}
\alias{RSF_plot}
\title{RSF_plot Function}
\usage{
RSF_plot(rsf_file, layout_csv = NULL)
}
\arguments{
\item{rsf_file:}{Input *.rsf file name (name should be surounded by "").}

\item{layout_csv:}{Input *.csv file name (name should be surounded by "") containing the WTG positions (X,Y).Default value = NULL. if provided, turbine postions would be plotted on the map.}
}
\description{
Interactive plot (raster/map) of an rsf object ( direction versus (Height, A, k, Wind speed) )
}
\examples{
RSF_plot(rsf_file = "Aldermyrberget 166m.rsf", layout_csv = "layout V14A.csv")
}
\keyword{plot,}
\keyword{rsf,}
\keyword{vizualisation}

