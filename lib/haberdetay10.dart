import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay10 extends StatelessWidget {
  const HaberDetay10({super.key});

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
                                  child: Text("Borsa neden düşüyor? Uzman isim Panik havasına kapılmayın! dedi ve uyardı",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/borsa3.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
"Borsada 8 gündür devam eden düşüşün ardından devre kesici uygulandı ve işlemler bir süre geçici olarak durduruldu. Yeni güne ise Borsa İstanbul'da BIST 100 endeksi,yüzde 0,05 artışla 4.754,57 puandan başladı. Uzman isim 8 günlük düşüşün nedenini açıkladı ve vatandaşları uyardı.Borsada yaşanan gelişmelerin ardından vatandaşlar düşüşün neden olduğunu araştırmaya başladılar. Finansal Yatırımcılar Derneği Başkanı Ali Bahçuvan, “Borsa çok yükselmişti, düşebilir diye belirtmiştik” dedi ve 8 günlük düşüşün neden olduğunu açıkladı.Kanal D Haber’e konuşan Bahçuvan, “Öncelikle kredili işlemlerle ilgili düzenlemelerle başladı. Kredili satışlar geldi. Sonrasında seçimle ilgili belirsizlikler etkili oldu. Bugün itibari ile durulmaya başladı. Bundan sonra çok büyük bir panik olacağını düşünmüyorum” dedi.Bahçuvan açıklamasında, özellikle kripto para da kaybedip borsaya yönelenlerin finansal okuryazarlığının daha az olması nedeniyle ani tepkiler vermelerinin piyasada dalgalanmalara neden olduğunu açıkladı ve “O yüzden borsada da hareketler daha sert oluyor.” dedi.",
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