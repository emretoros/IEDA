library(shiny)
library(shinyjs)
library(shinydashboard)
library(plotly)
library(DT)
library(xlsx)
library(evaluate)
library(shinycssloaders)


ui = dashboardPage(title = "Kesifsel Veri Analizi ",
  skin = "blue",
  dashboardHeader(title = div(img(src="Title.png",height=150,width=150,align = "left"),
                              "KVA"),
                  titleWidth = 250),

  # ***************************Dashboard Side Bar***************************
  dashboardSidebar(
    width = 250,
    sidebarMenu(id = "MenuTabs",
      menuItem("Ana Sayfa", tabName = "AnaSayfa", icon = icon("home")),
      menuItem("Veri Yukleme", tabName = "VeriYukleme", icon = icon("file")),
      menuItem("Tek Degiskenli Analiz", tabName = "TekDegiskenliAnaliz", icon = icon("bar-chart")),
      menuItem("Iki Degiskenli Sacinim", tabName = "IkiDegiskenliSacinim", icon = icon("dot-circle-o")),
      menuItem("Iki Degiskenli Kutu", tabName = "IkiDegiskenliKutu", icon = icon("sliders")),
      menuItem("Iki Degiskenli Grup Sutun", tabName = "IkiDegiskenliGrupSutun", icon = icon("bar-chart")),
      menuItem("Iki Degiskenli Grup Histogram", tabName = "IkiDegiskenliGrupHistogram", icon = icon("area-chart")),
      menuItem("Cok Degiskenli Sacinim", tabName = "CokDegiskenliSacinim", icon = icon("dot-circle-o")),
      menuItem("Cok Degiskenli Kutu", tabName = "CokDegiskenliKutu", icon = icon("sliders")),
      menuItem("KVA", tabName = "KVA", icon = icon("info-circle"))
    )
  ),

  # ***************************Dashboard Body***************************
  dashboardBody(
    tabItems(
      # ***************************Data Source***************************
      tabItem(tabName = "AnaSayfa",
              source("./ui_0Home.R", local = T)[1]),

      # ***************************Data Source***************************
      tabItem(tabName = "VeriYukleme",
              source("./ui_1DataSource.R", local = T)[1]),

      # ***************************Univariate Analysis***************************
      tabItem(tabName = "TekDegiskenliAnaliz",
              source("./ui_2Univariate.R", local = T)[1]),

      # ***************************Bi Variate Scatter Plot***************************
      tabItem(tabName = "IkiDegiskenliSacinim",
              source("./ui_3BiVariateScatter.R", local = T)[1]),

      # ***************************Bi Variate Box Plot***************************
      tabItem(tabName = "IkiDegiskenliKutu",
              source("./ui_4BiVariateBox.R", local = T)[1]),

      # ***************************Bi Variate Group Bar Plot***************************
      tabItem(tabName = "IkiDegiskenliGrupSutun",
              source("./ui_5BiVariateBar.R", local = T)[1]),

      # ***************************Bi Variate Group Histogram***************************
      tabItem(tabName = "IkiDegiskenliGrupHistogram",
              source("./ui_6BiVariateHistogram.R", local = T)[1]),

      # ***************************Multi Variate Scatter Plot***************************
      tabItem(tabName = "CokDegiskenliSacinim",
              source("./ui_7MultiScatter.R", local = T)[1]),

      # ***************************Multi Variate Box Plot***************************
      tabItem(tabName = "CokDegiskenliKutu",
              source("./ui_8MultiBox.R", local = T)[1]),

      # ***************************Multi Variate Box Plot***************************
      tabItem(tabName = "KVA",
              source("./ui_9EDA.R", local = T)[1])
    )
  )
)

