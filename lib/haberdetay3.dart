import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay3 extends StatelessWidget {
  const HaberDetay3({super.key});

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
                                  child: Text("Bambaşka bir Elbistan'a uyanacağız' diyen Vali Gökmen Çiçek sözğnde durdu: Elbistan'da konteyner çarşılar 4 günde tamamlandı",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/haber3.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Pazartesi günü bambaşka bir Elbistana uyanacağız diyerek Kahramanmaraşın Elbistan ilçesinde konteyner çarşıların hızla yetiştirileceğini belirten Afet Koordinasyon Valisi Gökmen Çiçek, Twitter hesabından yeni paylaşım yaptı. Çiçek, Çok şükür. Elbistanlılara söz verdiğimiz konteyner çarşılarımızı arkadaşlarımız gece gündüz hiç durmadan çalışarak 4 günde tamamladı .Elbistan Melikgazi çarşımızda ve Elbistan Kayseri çarşımızda yarından itibaren esnaflarımız faaliyetlerine başlıyorlar. dedi.Kahramanmaraş merkezli meydana gelen 7.7 ve 7.6 büyüklüğündeki depremlerin ardından Kayseri Valisi Gökmen Çiçek, Elbistan ilçesinde koordinatör vali olarak görevlendirildi. Geçtiğimiz günlerde Haberler.com Genel Yayın Yönetmeni Bedia Teymurun sorularını yanıtlayan Vali Çiçek, Elbistanda konteyner çarşıların kısa süre içerisinde tamamlanacağını belirterek, 'Pazartesi günü bambaşka bir Elbistana uyanacağız demişti",
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