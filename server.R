# server.R --- defines the logic of the application


# Logic
shinyServer(function(input, output) {
        # Load user data
        data <- read.csv(input$data, header=input$header, sep=input$sep, quote=input$quote)
        
        # TEST
        output$test <- renderPrint({
            head(data)
        })
        }
    )