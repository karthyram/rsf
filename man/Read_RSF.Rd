% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R_SF.R
\name{Read_RSF}
\alias{Read_RSF}
\title{Read_RSF Function}
\usage{
Read_RSF(Input_file)
}
\arguments{
\item{Input_file:}{"*.rsf" file ()}
}
\description{
This function allows you to read an *.rsf file. it reconises if it is 36 or 12 sectors, load it accordingly, with columns names.
rsf = wind ReSource File. it is a wind mapping output from wind flow model. the new object will be a data.table
}
\examples{
load into memory an rsf file into the object rsf_166:
rsf_166 <- Read_RSF("RSF-windresource-CFD_Aldermyrberget 166m.rsf")
}
\keyword{read}
\keyword{rsf,}

