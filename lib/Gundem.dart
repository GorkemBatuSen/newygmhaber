import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ygmhaber/haberdetay4.dart';

import 'haberdetay.dart';
import 'haberdetay2.dart';
import 'haberdetay3.dart';

class GundemSayfa extends StatelessWidget {
  const GundemSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Gündem Haberleri"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            Container(
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                    Card(
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/haber1.jpg")),
                          Text(
                            "Aydın'da kan donduran görüntü! Sokak ortasında yere yatırdığı adamı defalarca bıçaklandı",
                            style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          ButtonBar(
                            children: [
                              MaterialButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay1()));
                              },
                                child:Text("Habere Git",style: TextStyle(color: Colors.red[900]),) ,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                      Card(
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/haber2.jpg")),
                            Text(
                              "Osmaniye'de bir kişi depremden önce sattığı eve kiracı olarak geldi",
                              style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            ButtonBar(
                              children: [
                                MaterialButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay2()));
                                },
                                  child:Text("Habere Git",style: TextStyle(color: Colors.red[900]),) ,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Image(image: AssetImage("assets/haber3.jpg")),
                            Text(
                              "Bambaşka bir Elbistan'a uyanacağız' diyen Vali Gökmen Çiçek sözğnde durdu: Elbistan'da konteyner çarşılar 4 günde tamamlandı",
                              style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            ButtonBar(
                              children: [
                                MaterialButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay3()));
                                },
                                  child:Text("Habere Git",style: TextStyle(color: Colors.red[900]),) ,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                   Card(
                     child: Column(
                       children: [
                         Image(image: AssetImage("assets/haberler21.webp")),
                         Text(
                           "Kılıçdaroğlu, CHP Genel Merkezi’nde: Sevgili halkım, eyvallah, başlıyoruz",
                           style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                           textAlign: TextAlign.start,
                         ),
                         ButtonBar(
                           children: [
                             MaterialButton(onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay4()));
                             },
                               child:Text("Habere Git",style: TextStyle(color: Colors.red[900]),) ,
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                    ],
                  ),
                ),
              ),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
