import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ygmhaber/haberdetay8.dart';
import 'package:ygmhaber/haberdetya9.dart';

import 'haberdetay10.dart';

class BorsaSayfa extends StatelessWidget {
  const BorsaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Borsa Haberleri"),
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
                     Image(image: AssetImage("assets/borsa1.jpg")),
                     Text(
                       "Moskova Borsası'nda TL ile işlemler başlıyor",
                       style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                     ),
                     ButtonBar(
                       children: [
                         MaterialButton(onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay8()));
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
                       Image(image: AssetImage("assets/borsa2.jpg")),
                       Text(
                         "Altın fiyatları çakıldı! Uzman isim 'Dikkat edin' diyerek uyardı: Asıl yükseliş ondan sonra...",
                         style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                       ),
                       ButtonBar(
                         children: [
                           MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay9()));
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
                       Image(image: AssetImage("assets/borsa3.jpg")),
                       Text(
                         "Borsa neden düşüyor? Uzman isim Panik havasına kapılmayın! dedi ve uyardı",
                         style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                       ),
                       ButtonBar(
                         children: [
                           MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay10()));
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
    ]
    ),
    ),
    ),
    );
  }
}
