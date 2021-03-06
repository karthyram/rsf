% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R_SF.R
\name{RSF_convert}
\alias{RSF_convert}
\title{RSF_convert Function}
\usage{
RSF_convert(rsf_file1, output_name = rsf_file1, crop = FALSE,
  layout_csv = NULL, crop_buffer = 700, twelve_S = FALSE,
  rsf_file2 = NULL, shear_out = FALSE, three_D = FALSE, layer_H = NULL)
}
\arguments{
\item{rsf_file1:}{Input *.rsf file name (name should be surounded by "").}

\item{output_name:}{Output *.rsf file name " (name should be surounded by "").}

\item{crop:}{Should the rsf be croped ?  TRUE/FALSE. Default value = FALSE.}

\item{layout_csv:}{Input *.csv file name (name should be surounded by "")  containing the WTG positions (X,Y).Default value = NULL. This input is used to crop and benchmark the production (12 Sectors versus 36 sectors).}

\item{crop_buffer:}{Integer value: Distance in meters around the WTG postions that should be crop (default value = 700m)}

\item{twelve_S:}{Should the rsf be converted into 12 sectors ?  TRUE/FALSE. Default value = FALSE.}

\item{rsf_file2:}{Input *.rsf file name (name should be surounded by ""). Second rsf file used for shear and 3 dimensionals rsf creation. Default value = NULL.}

\item{shear_out:}{Should the shear should be extracted and exported (csv file) ?  TRUE/FALSE. Default value = FALSE.}

\item{three_D:}{Should a three dimensional rsf created  ? TRUE/FALSE. Default value = FALSE.}

\item{layer_H:}{vector containing  the level of the 3 dimensional rsf (used if three_D = TRUE). if not filled and three_D = TRUE, the level multiple of 10 would be created. Default value = NULL.}
}
\description{
Do basic transformation on *.rsf file (rsf = wind ReSource File): Crop, convert in 12 sector, create new height levels, compute and export shear table.
}
\examples{
crop the "Aldermyrberget 166m.rsf" 700m (default value) around the layout "layout V14A.csv":
RSF_convert(rsf_file1 = "Aldermyrberget 166m.rsf",crop = TRUE,layout_csv = "layout V14A.csv" )

Crop 500m and convert into 12 sector "Aldermyrberget 166m.rsf"
RSF_convert(rsf_file1 = "Aldermyrberget 166m.rsf",crop = TRUE,layout_csv = "layout V14A.csv", crop_buffer = 500, twelve_S = TRUE )

create a 3 dimensional rsf on the levels (112,137,142).
RSF_convert(rsf_file1 = "Aldermyrberget 166m.rsf",three_D = TRUE, rsf_file2 = "Aldermyrberget 103m.rsf", layer_H = c(112,137,142))

create a 3 dimensional rsf (default level) and export the shear table.
RSF_convert(rsf_file1 = "Aldermyrberget 166m.rsf",three_D = TRUE, rsf_file2 = "Aldermyrberget 103m.rsf",shear_out = TRUE)

crop, convert to 12 sector, create a 3 dimensional rsf (containing the 112,137 ad 142m levels) and also export the shear table.
RSF_convert(rsf_file1 = "Aldermyrberget 166m.rsf",crop = TRUE,layout_csv = "layout V14A.csv",twelve_S = TRUE,layer_H = c(112,137,142), three_D = TRUE, rsf_file2 = "Aldermyrberget 103m.rsf",shear_out = TRUE)

}
\keyword{convert}
\keyword{read,}
\keyword{rsf,}

