import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ygmhaber/haberdetay6.dart';
import 'package:ygmhaber/haberdetay7.dart';

import 'haberdetay5.dart';

class SporSayfa extends StatelessWidget {
  const SporSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Spor Haberleri"),
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
                      Image(image: AssetImage("assets/spor.jpg")),
                      Text(
                        "Teknik direktör Okan Buruk yönetiminde dinamik ısınma ile başlayan idman, koşu çalışmasıyla devam etti",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay5()));
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
                       Image(image: AssetImage("assets/spor1.jpg")),
                       Text(
                         "Bakan Kasapoğlu ayrıca, ligin 2 haftasını kapsayan maçların şifresiz yayınlanacağını belirterek, Liglerimizin yayıncı kuruluşu olarak BeIN Sports ile yaptığımız görüşmede 3-13 Mart arasında, ligin önümüzdeki iki haftasındaki tüm maçları şifresiz yayınlanma kararı alındı sözlerini kullandı.",
                         style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                       ),
                       ButtonBar(
                         children: [
                           MaterialButton(onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay6()));
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
                    Image(image: AssetImage("assets/spor2.jpg")),
                    Text(
                        "Beşiktaş, Spor Toto Süper Lig'in 24'üncü haftasında Ankaragücü ile sahasında oynayacağı maçın hazırlıklarına, bu sabah yaptığı antrenmanla devam ettiNevzat Demir Tesisleri'nde teknik direktör Şenol Güneş yönetiminde yapılan antrenman, kondisyon ve taktik çalışmasıydı. İdman; ısınma koşuları, istasyon koşuları ve stretching çalışması ile başladı. 5'e 2 çalışması ile devam eden antrenman, çift kale taktik maçla sona erdi.Siyah-beyazlılar, Ankaragücü maçı hazırlıklarına, yarın saat 11.30'da yapacağı antrenmanla devam edecek.",
                        style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold)),
                    ButtonBar(
                      children: [
                        MaterialButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberDetay7()));
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
