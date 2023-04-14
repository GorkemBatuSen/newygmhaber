import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay8 extends StatelessWidget {
  const HaberDetay8({super.key});

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
                                  child: Text("Moskova Borsası`nda TL vadeli işlemleri başlıyor",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/borsa1.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Moskova Borsası, artan müşteri talebi ile Türk lirası ve Hong Kong doları cinsinden vadeli işlem kontratlarının işleme açılacağını duyurdu.Moskova Borsası (MOEX), bugün itibarıyla Türk Lirası ve Hong Kong doları cinsinden vadeli işlem kontratlarının işleme açılacağını duyurdu. Türk lirası-Rus rublesi ve Hong Kong doları-Rus rublesi cinsinden vadeli işlemlere başlayacağı kaydedilen açıklamada, borsa müşterilerinin söz konusu Döviz cinslerinde Haziran, Eylül ve Aralık 2023 ile Mart 2024 tarihlerinde yapılacak sözleşmelere erişebileceği bilgisine yer verildi.MOEX Yönetim Kurulu Başkanı Yuriy Denisov, Aralık 2022'de yaptığı açıklamada, Moskova Borsası’nda Türk lirasına yönelik talebin 2022’de bir önceki yıla göre 17 kat arttığını bildirmişti.",
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