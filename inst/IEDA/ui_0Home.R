fluidPage(
  fixedRow(
  column(12,
         align = "left",
         h1("KVA: "),
         h2("Etkileşimli Grafikler ile Kesifsel Veri Analizi"),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>"),
         h3("KVA Nedir?"),
         h4("Keşifsel veri analizi, herhangi bir istatistiki analiz icin temel olusturan birincil analiz hamlesidir.
            Cikarimsal istatistiki analizler, bu temel analizlerin bulgularina göre sekillenir"),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h3("Manual"),
         h4("KVA uygulamasi ile kesifsel veri analizini yapmak icin asagidaki adimlari takip ediniz ."),
         tags$ol(
           tags$li(h4("Veri Yukleme sekmesinden bilgisayarinizda buluna dosyanizi bulunuz ve Yukle butonu ile uygulamaya yukleyiniz")),
           tags$li(h4("Veri yükleme islemi bittiginde, Veri Isleme sekmesindeki secenekleri kullanarak verinizi inceleyiniz ")),
           tags$li(h4("Degisken Olcum Seviyesi sekmesini kullanarak degiskenlerinizin olcum seviyelerini kategorik veya sayisal olarak seciniz.")),
           tags$li(h4("Analiz icin hazirla butonu ile veriyi grafikler icin hazirlayiniz")),
          
         ),
         h3("More about Exploratory Data Analysis can be viewed in the EDA Tab."),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h4("Source code for the Shiny applicaton and License Information can be found at:"),
         h4(a("https://github.com/krupanss/Interactive-Exploratory-Data-Analysis", href="https://github.com/krupanss/Interactive-Exploratory-Data-Analysis")),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h3("Contact"),
         h4("sskrupan@gmail.com"),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         align = "center",
         HTML(paste(icon("copyright"),"Krupan - IEDA Version 1.0")),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>")
         )
         ))
