import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay7 extends StatelessWidget {
  const HaberDetay7({super.key});

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
                                  child: Text("Beşiktaş Spor Toto Süper Lig'in hazırlıkları",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/spor2.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Beşiktaş, Spor Toto Süper Lig'in 24'üncü haftasında Ankaragücü ile sahasında oynayacağı maçın hazırlıklarına, bu sabah yaptığı antrenmanla devam etti.Nevzat Demir Tesisleri'nde teknik direktör Şenol Güneş yönetiminde yapılan antrenman, kondisyon ve taktik çalışmasıydı. İdman; ısınma koşuları, istasyon koşuları ve stretching çalışması ile başladı. 5'e 2 çalışması ile devam eden antrenman, çift kale taktik maçla sona erdi.Siyah-beyazlılar, Ankaragücü maçı hazırlıklarına, yarın saat 11.30'da yapacağı antrenmanla devam edecek.İlk 30 dakikası basına açık idman, yaklaşık 1.5 saat sürdü.Şenol Güneş'in yönetiminde yapılan antrenman, kondisyon ve taktik çalışmasıydı. Isınma koşuları ve pas çalışmasıyla başlayan idman, dar alanda oynanan çift kale taktik maç ile sona erdi.Siyah-beyazlılar, Spor Toto Süper Lig'de MKE Ankaragücü ile oynayacağı maçın hazırlıklarına yarın saat 11.30'da basına kapalı yapacağı antrenmanla devam edecek.Beşiktaş, Spor Toto Süper Ligde MKE Ankaragücü ile oynayacağı maçın hazırlıklarına bugün yaptığı antrenmanla devam etti.",
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
