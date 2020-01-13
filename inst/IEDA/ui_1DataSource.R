fluidPage(
  fluidRow(
    box(title = "Veri", width = 4, status = "primary", solidHeader = TRUE,
        collapsible = TRUE,
        radioButtons("fileType", "Select File Type", c(Excel = "Excel Dosyasi", `R Data Dosyasi` = "rda", CSV = "csv"),
                     inline = TRUE),
        uiOutput("FileInput"),
        uiOutput("SelectSheet"),
        conditionalPanel("input.fileType == 'excel'|| input.fileType == 'csv'",
                         checkboxInput("header", "Sutun Basligi", TRUE)),
        conditionalPanel("input.fileType == 'csv'",
                         radioButtons("sep", "Ayrac", c( Comma = ",", Semicolon = ";", Tab = "\t"), ",",
                                      inline = TRUE)),
        actionButton("btSubmit", "Yukle"),
        htmlOutput("InputValidation")
        ),

    tabBox(title = "Veri Isleme", width = 8, id = "InputData",
           tabPanel("Veri Yapisi",
                    conditionalPanel("output.ValFlag", htmlOutput("dataInfo")),
                    conditionalPanel("output.ValFlag", verbatimTextOutput("strData"))),
           tabPanel("Veri Onizleme",
                    conditionalPanel("output.ValFlag", DT::dataTableOutput("DataTable"))),
           tabPanel("Degisken Olcum Seviyesi Secimi",
                    conditionalPanel("output.ValFlag", withSpinner(uiOutput("SelDimMeas")),
                                     actionButton("btExplore", "Analiz Icin Hazirla")))
           )
    )
  # fluidRow(
  #   box(title = "Data Preview", width = 8, status = "info", solidHeader = TRUE,
  #       collapsible = TRUE,"Sample"
  #       ),
  #
  #   box(title = "Select Column Features", width = 4, status = "primary", solidHeader = TRUE,
  #       collapsible = TRUE, "Sample2"
  #       )
  #   )
)
