library(shiny)

# Define server logic for random distribution application

shinyServer(function(input, output) {
  
  
# read the data from csv file downloaded from WHO.
  res <- read.csv('data-verbose.csv', header = TRUE, sep=",")
  
  # Reactive expression to generate the requested distribution.
  # This is called whenever the inputs change. The output
  # functions defined below then all use the value computed from
  # this expression
  
    mor_rate <-reactive({      
  
      # filter data on the basis of input values received from UI
    result <- res[res$GHO == input$type,]
   result <- result[result$SEX_CODE == input$gender, ] 
   result <- result[result$YEAR == input$year, ]
  
  #sort the records on the basis of age group to generate chart
    
      result[order(as.numeric(result$GROUP)),]
    
  })
    
    
  # Generate a plot of the data. Also uses the inputs to build
  # the plot label. 
  
  output$plot <- renderPlot({
    #Data on the basis of which barplot is generated.
     mor <- as.vector(mor_rate()$NUMERIC)
   
     # display group code as the labels for the bars.
     group <- as.vector(mor_rate()$GroupCode)
     
     #draw barplot
   barplot(mor,width=2,space=2,names.arg = group, density = NULL,beside = FALSE
           ,main = "WHO statistics of India"  )

          
  })
  
  # Generate a summary of the data
  output$summary <- renderPrint({
    summary(mor_rate())
  })
  
  # Generate an HTML table view of the data
  output$table <- renderTable({
    data.frame(x=mor_rate()[,c(1:3,6:8)])
  })
  
})
