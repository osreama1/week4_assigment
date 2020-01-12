library(shiny)

shinyUI(fluidPage(
    titlePanel("Plot Poison Distribution"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("samples","How Many Samples Should be Plotted?",
                         10,10000,value=100),
            sliderInput("lambda","What is the lambda value?",
                         1,100,value=1),
            checkboxInput("show_xlab","Show/Hide X Axis Label", value=TRUE),
            checkboxInput("show_ylab","Show/Hide Y Axis Label", value=TRUE),
            checkboxInput("show_title","Show/Hide Title",value=TRUE),
            h3("Mean:"),
            textOutput("meanOut"),
            h3("Standard Deviation:"),
            textOutput("sdOut")
        ),
        mainPanel(
            plotOutput("plot1")
        )
    )
))
