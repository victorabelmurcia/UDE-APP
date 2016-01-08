# server.R --- defines the logic of the application


# Logic
shinyServer(function(input, output) {
        # Load user data
        datasetInput <- reactive({
            inputData <- input$data
            if (is.null(inputData)) return(NULL)
            data <- read.csv(inputData$datapath, header=input$header, sep=input$sep, quote=input$quote)
            return(data)
        })
        
        # TEST
        output$test <- renderPrint({
            data <- datasetInput()
            head(data)
        })
        }
    )