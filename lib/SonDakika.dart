import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ygmhaber/haberdetay11.dart';

import 'haberdetay12.dart';
import 'haberdetay13.dart';

class SonDakikaSayfa extends StatelessWidget {
  const SonDakikaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Son Dakika  Haberleri"),
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
                      Image(image: AssetImage("assets/sondakika.jpg")),
                      Text(
                        "EYT'liler promosyona göre banka seçecek! 15 bin TL'yi bulabilir...(Hangi banka ne kadar EYT emekli promosyonu veriyor?)",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay11()));
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
                       Image(image: AssetImage("assets/sondakika1.jpg")),
                       Text(
                         "Dün açıklandı, İstanbullular merak etti! Büyük taşınma sonrası 1.5 milyon konut nereye yapılacak?",
                         style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                       ),
                       ButtonBar(
                         children: [
                           MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay12()));
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
                     Image(image: AssetImage("assets/sondakika2.jpg")),
                     Text(
                       "Son dakika | Depremlerden sonra merak konusu olmuştu! Cumhurbaşkanı Erdoğan seçim tarihini açıkladı: 14 Mayıs'ta millet gereğini yapacak",
                       style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                     ),
                     ButtonBar(
                       children: [
                         MaterialButton(onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay13()));
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
    )
    ]
    )
    )
    )
    );
  }
}
