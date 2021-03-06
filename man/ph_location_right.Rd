% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ph_location.R
\name{ph_location_right}
\alias{ph_location_right}
\title{location of a right body element}
\usage{
ph_location_right(...)
}
\arguments{
\item{...}{unused arguments}
}
\description{
The function will return the location corresponding
to a right bounding box. The function assume the layout 'Two Content'
is existing.
}
\examples{
library(magrittr)
read_pptx() \%>\%
  add_slide(layout = "Title and Content", master = "Office Theme") \%>\%
  ph_with("Hello", location = ph_location_left() ) \%>\%
  ph_with("world", location = ph_location_right() ) \%>\%
  print(target = tempfile(fileext = ".pptx") )
}
\seealso{
Other functions for placeholder location: \code{\link{ph_location_fullsize}},
  \code{\link{ph_location_label}},
  \code{\link{ph_location_left}},
  \code{\link{ph_location_type}}, \code{\link{ph_location}}
}
\concept{functions for placeholder location}
