% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7-inputs.R
\name{f7Picker}
\alias{f7Picker}
\title{Create a Framework7 picker input}
\usage{
f7Picker(
  inputId,
  label,
  placeholder = NULL,
  value = choices[1],
  choices,
  rotateEffect = TRUE,
  openIn = "auto",
  scrollToInput = FALSE,
  closeByOutsideClick = TRUE,
  toolbar = TRUE,
  toolbarCloseText = "Done",
  sheetSwipeToClose = FALSE
)
}
\arguments{
\item{inputId}{Picker input id.}

\item{label}{Picker label.}

\item{placeholder}{Text to write in the container.}

\item{value}{Picker initial value, if any.}

\item{choices}{Picker choices.}

\item{rotateEffect}{Enables 3D rotate effect. Default to TRUE.}

\item{openIn}{Can be auto, popover (to open picker in popover), sheet (to open in sheet modal).
In case of auto will open in sheet modal on small screens and in popover on large screens. Default
to auto.}

\item{scrollToInput}{Scroll viewport (page-content) to input when picker opened. Default
to FALSE.}

\item{closeByOutsideClick}{If enabled, picker will be closed by clicking outside of picker or related input element.
Default to TRUE.}

\item{toolbar}{Enables picker toolbar. Default to TRUE.}

\item{toolbarCloseText}{Text for Done/Close toolbar button.}

\item{sheetSwipeToClose}{Enables ability to close Picker sheet with swipe. Default to FALSE.}
}
\description{
Build a Framework7 picker input
}
\examples{
if(interactive()){
 library(shiny)
 library(shinyMobile)

 shinyApp(
   ui = f7Page(
    title = "My app",
    f7SingleLayout(
     navbar = f7Navbar(title = "f7Picker"),
     f7Picker(
      inputId = "mypicker",
      placeholder = "Some text here!",
      label = "Picker Input",
      choices = c('a', 'b', 'c')
     ),
     textOutput("pickerval")
    )
   ),
   server = function(input, output) {
    output$pickerval <- renderText(input$mypicker)
   }
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
