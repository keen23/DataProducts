library(shiny)

# Define UI for random distribution application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Programming Assignment"),
  
  # Sidebar with controls to select the type of data to view
  # on the basis of gender and year. Note the use of the
  # br() element to introduce extra vertical spacing
  
  sidebarLayout(
    sidebarPanel(
      radioButtons("type", "Select Chart:",
                   c("Probability of dying" = "nqx",
                     "Age-specific death rate" = "nMx",
                     "Expectation of life" = "ex"
                   )),
      br(),
      
      radioButtons("gender", "Gender type:",
                   c("Male" = "MLE",
                     "Female" = "FMLE",
                     "Both Male and Female" = "BTSX"
                    )),
      br(),
      
      radioButtons("year", "Year:",
                   c("1990" = "1990",
                     "2000" = "2000",
                     "2012" = "2012"
                   ))
    ),
    
    # Show a tabset that includes a plot, summary, and table view
    # of the generated distribution
    
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Plot", plotOutput("plot")), 
                  tabPanel("Summary", verbatimTextOutput("summary")), 
                  tabPanel("Table", tableOutput("table"))
      )
    )
  )
))
