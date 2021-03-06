% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ppt_ph_manipulate.R
\name{ph_remove}
\alias{ph_remove}
\title{remove shape}
\usage{
ph_remove(x, type = NULL, id_chr = NULL, ph_label = NULL)
}
\arguments{
\item{x}{a pptx device}

\item{type}{placeholder type}

\item{id_chr}{placeholder id (a string). This is to be used when a placeholder type
is not unique in the current slide, e.g. two placeholders with type 'body'.
Values can be read from \code{\link{slide_summary}}.}

\item{ph_label}{label associated to the placeholder. Use column
\code{ph_label} of result returned by \code{\link{slide_summary}}.
This should be used instead of using \code{type} and \code{id_chr}.}
}
\description{
remove a shape in a slide
}
\note{
Arguments \code{type} and \code{id_chr} will be deprecated in the next
version of flextable.
}
\examples{
fileout <- tempfile(fileext = ".pptx")
doc <- read_pptx()
doc <- add_slide(doc, layout = "Title and Content", master = "Office Theme")
doc <- ph_with_text(x = doc, type = "title", str = "Un titre")
slide_summary(doc) # read column ph_label here
doc <- ph_remove(x = doc, ph_label = "Title 1")

print(doc, target = fileout )
}
