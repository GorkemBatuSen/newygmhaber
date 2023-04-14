import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay2 extends StatelessWidget {
  const HaberDetay2({super.key});

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
                                  child: Text("Osmaniye'de bir kişi depremden önce sattığı eve kiracı olarak geldi",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/haber2.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Osmaniye'de esnaflık yapan Çetin Önsel, Kahramanmaraş'ta meydana gelen depremler öncesinde müstakil evini satmak için söz verdi. Depremde kendisinin oturduğu ev hasar alan Önsel, sattığı eve kiracı olarak taşınırken, evi satın alan İsmet Koca, 'Çetin Bey sözünden istese dönebilirdi fakat kendisinin ihtiyacı olmasına rağmen sözünden vazgeçmedi. Bundan dolayı da ben evin tamiratını yapıp istediği süre içerisinde oturmayı taahhüt ediyorum.' dedi.Osmaniye'nin Kadirli ilçesinde telefon dükkanı işleten Çetin Önsel, Kahramanmaraş depremlerinden önce müstakil evini satılığa çıkardı. Evi almak isteyen İsmet Koca ile anlaşan Önsel arasında resmi bir işlem yapılmadı.SATTIĞI EVİN KİRACISI OLDUTapu işlemlerini yapma sürecinde meydana gelen depremlerde Önsel'in oturduğu apartman hasar aldı. Önsel, müstakil eve ihtiyacı olmasına rağmen sözünde durarak evi sattı ve sattığı eve de kiracı olarak geldi.'SÖZÜMDEN DÖNMEDİM' Çetin Önsel, 'Benim müstakil evim vardı, müstakil evimi satmak istedim. Onu da İsmet beye satmak istedim. Herhangi bir kapora almadım, herhangi bir sözleşme yapmadım sadece aramızda bir fiyat konuştuk. O fiyat üzerinden tapuya gittik, tapuda hacizle karşılaştık. Haczin kalkması lazımdı, satışı gerçekleştiremedik. Satışı gerçekleştiremeyince aradan 1-2 hafta zaman geçti, deprem oldu. Depremden sonra benim evim hasar gördüğü için evsiz kaldım ama kiraya çıkmam gerekiyordu. Evimi tekrar satacak olduğum kişiye sözümden dönmedim aynı fiyat üzerinden yine sözleştik. Satıştan vazgeçmedim tekrar geri verdim. Evi verdim yani sözümden dönmedim.' dedi.",
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