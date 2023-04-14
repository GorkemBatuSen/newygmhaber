import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay5 extends StatelessWidget {
  const HaberDetay5({super.key});

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
                                  child: Text("Galatasaray'da Kasımpaşa maçı hazırlıkları! Mertens...",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/spor.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Teknik direktör Okan Buruk yönetiminde dinamik ısınma ile başlayan idman, koşu çalışmasıyla devam etti. Antrenman, üç grup halinde 5'e 2 pas oyununun ardından savunma ve hücum çalışması ile sona erdi.Sarı-kırmızılı takım, cuma günü saat 11.30'da yapacağı idmanla hazırlıklarını sürdürecek.Kasımpaşa maçında forma giyemeyen Dries Mertens'ten Galatasaray'a kötü haber geldi. Belçikalı yıldız, sarı-kırmızılıların Konyaspor ile deplasmanda oynayacağı mücadelede de forma giyemeyecek.Süper Lig'in 25. haftasında Kasımpaşa'yı 1-0 yenen Galatasaray'da Dries Mertens sakatlığı nedeniyle forma giyememişti. Konyaspor deplasmanında sahalara dönüp dönmeyeceği merak konusu olan deneyimli futbolcudan kötü haber geldi.KONYASPOR MAÇINDA FORMA GİYMESİ ZORKasımpaşa maçında takımını yalnız bırakan Mertens'i kısa sürede sahalara döndürmek için sağlık ekibi büyük çaba harcıyor. Ancak Belçikalı yıldızın, Konyaspor deplasmanında da forma giymesi beklenmiyor.MERTENS'İN KARNESİGalatasaray'ın sezon başında renklerine bağladığı Dries Mertens, sarı-kırmızılı forma ile 22 maça çıkarken 6 gol ve 3 asistlik performans gösterdi.",
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