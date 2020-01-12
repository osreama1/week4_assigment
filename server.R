library(graphics)
library(stats)
library(shiny)

shinyServer(function(input, output) {
    output$plot1<-renderPlot({
        set.seed(123)
        poisson_his<-rpois(input$samples,input$lambda)
        xlab<-ifelse(input$show_xlab,"X Axis","")
        ylab<-ifelse(input$show_ylab,"Frequency","")
        main<-ifelse(input$show_title,"Histogram of Poisson","")
        hist(poisson_his,xlim=range(0,input$lambda*2),xlab=xlab,ylab=ylab,main=main)
    })
    output$meanOut<-renderText({
        set.seed(123)
        poisson_his<-rpois(input$samples,input$lambda)
        mean(poisson_his)
    })
    output$sdOut<-renderText({
        set.seed(123)
        poisson_his<-rpois(input$samples,input$lambda)
        sd(poisson_his)
    })

})
