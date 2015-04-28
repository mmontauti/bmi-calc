shinyUI(fluidPage(
    titlePanel("Body Mass Index Calculator"),
    
    sidebarLayout(sidebarPanel(
        img(src = "http://upload.wikimedia.org/math/8/1/6/8168b66b1b9395a9b7c8fb7052d0d610.png",width = 200),
        helpText("The body mass index (BMI), or Quetelet index, is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of in units of kg/m2, resulting from weight in kilograms and height in metres. If pounds and inches are used, a conversion factor of 703 (kg/m2)/(lb/in2) must be applied. (Wikipedia)"),    
        radioButtons(
            inputId  = "units",
            label    = "Units:",
            choices  = c("Metric (kg & m)" = 1, "Imperial (lb & in)" = 2),
            selected = 1
        ),
        
        numericInput(
            inputId = "mass",
            label = strong("Your weight:"),
            value = 70
        ),
        
        numericInput(
            inputId = "height",
            label = strong("Your height:"),
            value = 1.80,
            step  = 0.10
        )
        ),
        
        mainPanel(
            uiOutput("input"),
            uiOutput("result"),
            uiOutput("graph"),
            uiOutput("fork")
        ))
))