% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Gauge.R
\name{f7Gauge}
\alias{f7Gauge}
\title{Create a Framework7 gauge}
\usage{
f7Gauge(id, type = NULL, value = NULL, size = NULL, bgColor = NULL,
  borderBgColor = NULL, borderColor = NULL, borderWidth = NULL,
  valueText = NULL, valueTextColor = NULL, valueFontSize = NULL,
  valueFontWeight = NULL, labelText = NULL, labelTextColor = NULL,
  labelFontSize = NULL, labelFontWeight = NULL)
}
\arguments{
\item{id}{Gauge ID.}

\item{type}{Gauge type. Can be "circle" or "semicircle". Default is "circle."}

\item{value}{Gauge value/percentage. Must be a number between 0 and 1. Default is 0.}

\item{size}{Generated SVG image size (in px). Default is 200.}

\item{bgColor}{Gauge background color. Can be any valid color string, e.g. #ff00ff, rgb(0,0,255), etc. Default is "transparent".}

\item{borderBgColor}{Main border/stroke background color.}

\item{borderColor}{Main border/stroke color.}

\item{borderWidth}{Main border/stroke width.}

\item{valueText}{Gauge value text (large text in the center of gauge).}

\item{valueTextColor}{Value text color.}

\item{valueFontSize}{Value text font size.}

\item{valueFontWeight}{Value text font weight.}

\item{labelText}{Gauge additional label text.}

\item{labelTextColor}{Label text color.}

\item{labelFontSize}{Label text font size.}

\item{labelFontWeight}{Label text font weight.}
}
\description{
Build a Framework7 gauge
}
\note{
not working yet
}
\examples{
if(interactive()){
 library(shiny)
 library(shinyF7)

 shiny::shinyApp(
  ui = f7Page(
    title = "My app",
    f7Gauge(
     id = "mygauge",
     type  = "semicircle",
     value = 10,
     borderColor = "#2196f3",
     borderWidth = 10,
     valueText = "50\%",
     valueFontSize = 41,
     valueTextColor = "#2196f3",
     labelText = "amount of something"
    )
  ),
  server = function(input, output) {}
 )
}

}
\author{
David Granjon and Isabelle Rudolf, \email{dgranjon@ymail.com}
}