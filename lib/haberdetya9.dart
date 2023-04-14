import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay9 extends StatelessWidget {
  const HaberDetay9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Haber Detayı"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              children: [
                Container(
                  color:  Colors.white,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          margin: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Padding(padding: const EdgeInsets.all(8.0),
                                  child: Text("Altın fiyatları çakıldı! Uzman isim 'Dikkat edin' diyerek uyardı: Asıl yükseliş ondan sonra...",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/borsa2.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
"Altın yatırımcıları piyasanın yönünü yakından takip ediyor. Geçtiğimiz günlerde FED, faizlerin 25 baz puan artırıldığını açıkladı. Temel verilere bakıldığında ABD'de enflasyonun kısmen gevşediği ancak halen yüksek kalmaya devam ettiğini hatırlatan Altın ve Para Piyasaları Uzmanı Senol Kaan, altın yatırımcılarını Dikkat edin diye uyardı ve altının hem düşeceği hem de yükseleceği bölgeyi işaret etti.ABD'de faiz artışının bu sene de devam etmesi düşünülürken temel ekonomik verilerin altın fiyatlarına nasıl yansıyacağı, yatırımcıların ana gündeminde yer alıyor. Temel veriler ışığında teknik analiz yapan Uzman Kaan, altın hakkında önce düşüş sonra yükseliş senaryosunu paylaştı ve yatırımcıları uyardı. İşte ayrıntılar... ASIL YÜKSELİŞ ORADAN SONRA GELEBİLİR Ons altın analizi yapan Uzman Kaan, 1970'li bölgelerin kritik olduğunu ve bu bölgelerden fiyatın geri çekilmesi durumunda 1890 seviyelerine kadar düşebileceğini aktardı. Bu düşüşü 'kısa süreli' olarak değerlendiren Kaan, Yatırımcı tedirgin olmasın asıl yükseliş oradan sonra gelebilir. Fiyat buradan dönerse kademeli olarak yükselir ve 2000 bölgelere kadar ulaşabilir. dedi.Yatırımcıları dikkat edin diye uyaran Kaan, Ani karar vermeyin, şuan için hiçbir şey geç değil diye konuştu. Altında orta ve uzun vadeli düşünenlerin bu dalgalanmalardan etkilenmeyeceğini de sözlerine ekleyen Kaan, Tepe bölge olarak 2000 bölgeleri işaret etti ve bu bölgeden geri çekilme gelebileceğini belirtti.",
                                    style: TextStyle(color: Colors.black, fontSize: 15,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}