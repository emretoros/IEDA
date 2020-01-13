fluidPage(
  fixedRow(
  column(12,
         align = "left",
         h1("KVA: "),
         h2("Etkilesimli Grafikler ile Kesifsel Veri Analizi"),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>"),
         h3("KVA Nedir?"),
         h4("Kesifsel veri analizi, herhangi bir istatistiki analiz icin temel olusturan birincil analiz hamlesidir.
            Cikarimsal istatistiki analizler, bu temel analizlerin bulgularina göre sekillenir"),
         HTML("<div style='height: 5px;'>"),
         HTML("</div>"),
         h3("Manual"),
         h4("KVA uygulamasi ile kesifsel veri analizini yapmak icin asagidaki adimlari takip ediniz ."),
         tags$ol(
           tags$li(h4("Veri Yukleme sekmesinden bilgisayarinizdaki dosyanizi bulunuz ve Yukle butonu ile uygulamaya yukleyiniz")),
           tags$li(h4("Veri yükleme islemi bittiginde, Veri Isleme sekmesindeki secenekleri kullanarak verinizi inceleyiniz ")),
           tags$li(h4("Degisken Olcum Seviyesi sekmesini kullanarak degiskenlerinizin olcum seviyelerini kategorik veya sayisal olarak seciniz.")),
           tags$li(h4("Analiz icin hazirla butonu ile veriyi grafikler icin hazirlayiniz")),
          
         ),
         h4("emretoros@gmail.com"),
         HTML("<div style='height: 25px;'>"),
         HTML("</div>")
         )
         ))
