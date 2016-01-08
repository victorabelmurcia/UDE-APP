# ui.R --- user interface code

shinyUI(navbarPage(strong("UDE-APP"), inverse=TRUE,
                   footer = list(strong("Authors:"), "Szymon Talaga,", "Victor Abel Murcia Pienkowski"),
                   # tabPanel sections define panels available in the navigation bar on the navbar type page
                   tabPanel("Introduction",         # Name of the panel
                            br(),                  # br() is a line break tag (like in simple html)
                            p("Hello,"),
                            p("welcome to Universal Data Exploration Application (UDE-APP). UDE-APP provides an universal interface for exploring any kind of user-provided data stored in a rectangular data matrix. The only limitations is that the fields of the dataset have to be separated either by comma, semicolon or tab. Alternatively an .RData file storing one data.frame named 'data' may be provided instead."),
                            br(),
                            tags$hr(),
                            
                            # Datafile selector
                            fileInput("data", "Choose a file",
                                      accept=c("txt/csv",
                                               "text/comma-separated-values",
                                               "text/plain",
                                               "csv")),
                            
                            tags$hr(), # simple horizontal rule
                            
                            # Whether the first line of a file is header
                            checkboxInput("header", "Header", TRUE),
                            # Field separator selector
                            radioButtons('sep', 'Separator',
                                         c(Comma=",",
                                           Semicolon=";",
                                           Tab="\t")),
                            # Quotation mark selector
                            radioButtons("quote", "Quote",
                                         c(None="",
                                           "Double quote"='"',
                                           "Single quote"="'")),
                            br(),
                            tags$hr(),
                            submitButton()
                            ),
                   tabPanel("Univariate distributions",
                            # Panel layout
                            # sidebarPanel defines control panel used to choose variables to be analyzed and set parameters of display
                            sidebarPanel(),
                            mainPanel(
                                verbatimTextOutput("test")
                                )
                            )
                       )
        )