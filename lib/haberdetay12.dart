import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay12 extends StatelessWidget {
  const HaberDetay12({super.key});

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
                                  child: Text("Dün açıklandı, İstanbullular merak etti! Büyük taşınma sonrası 1.5 milyon konut nereye yapılacak?",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/sondakika1.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Ülkemizi derinden sarsan Kahramanmaraş depremi sonrası İstanbul'da da önlemler alınmaya başlandı. Çevre ve Şehircilik Bakanı Murat Kurum, İstanbul'daki 1.5 milyon konutun Anadolu ve Avrupa yakasında belirlenen rezerv alanlara taşınacağını duyurmuştu. Peki bu 1.5 milyon konut nerelere kurulacak? Ev fiyatları düşecek mi artacak mı?İstanbul, Türkiye'nin en kalabalık şehri! 1999'daki Marmara depremi sonrası fayların yeniden hareketlendiği İstanbul'da özellikle sahil şeritlerini etkileyecek bir depremin olacağı ifade ediliyor. Uzmanların bu yorumu sonrası tedbirler alınmaya başlandı. İstanbul'da deprem konusunda riskli olan 1.5 milyon konut rezerv alanlara taşınacak.'KİMSE TERCİH ETMİYOR, İSTANBUL İÇİ GÖÇ BAŞLADI'İstanbul Emlakçılar Odası Başkanı Nizamettin Aşa, 'Deprem bölgesinden gelen depremzedeler İstanbul'u tercih etmiyor. İstanbul içinde de iç göç başladı. İstanbul'da beklenen deprem nedeniyle İstanbul'dan Trakya bölgesine gidenler bir akım oluşturdu. Çatalca, Tekirdağ, Keşan bölgesine büyük bir ilgi var. Arsa ve müstakil evlere talep var' ifadelerini kullandı.",
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