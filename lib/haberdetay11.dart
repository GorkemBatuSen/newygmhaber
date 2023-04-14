import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay11 extends StatelessWidget {
  const HaberDetay11({super.key});

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
                                  child: Text("EYT'liye promosyon ödemesi",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/sondakika.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
"EYT'liler başvuru sırasında banka seçecek ve ilk maaşlar ise Nisan ayında ödenecek. EYT’lilerin bir sonraki gündemi emekli promosyon ödemeleri olacak. Daha önce 10 bin lirayı gören emekli maaş promosyonları için 15 bin TL rakamı konuşulmaya başlandı. Bankalar yeni bir yarışa girmeye hazırlanırken promosyon rakamları da güncellendi. Peki, Hangi banka ne kadar EYT emekli promosyonu veriyor, kaç TL? İşte, 2023 Ziraat Bankası, Halkbank, Akbank, Denizbank, Yapı Kredi EYT emekli promosyonu ödemeleri.Emeklilikte Yaşa Takılan milyonlar Meclis’in dün yeniden faaliyetlerine başlamasıyla 20 yıllık hayalinde mutlu sona ulaştı. EYT yasası Resmen Meclis’ten geçti. Şimdi ise kanunun Resmi Gazete’de yayımlanıp yürürlüğe girmesinin ardından emeklilik hakkı elde eden vatandaşlar için başvuru süreci başlayacak. İlk maaşlarını Nisan ayında alacak emekli adayları banka ve şubesini e-Devlet'ten veya emeklilik işlemleri sırasında SGK'da seçebilecek. Böylece EYT'linin emekli maaşı tercih ettiği bankaya yatırılacak.EYT’LİYE EMEKLİ MAAŞ PROMOSYONUEYT düzenlemesinin netlik kazanması sonrasında bankalar da yeniden müşteri kazanmak için çalışmalarını hızlandırdı. Bankların geçtiğimiz yıl Temmuz ayında başlatarak Aralık sonuna kadar uzattığı emekli maaş promosyon yarışının yeniden alevlenmesi bekleniyor. Emeklilerin 2 bayramda ikramiye ve Temmuz döneminde yeniden zam alacak olması bankaların müşteri kazanması istediğini artıran diğer faktörler olarak dikkat çekiyor.3 YILLIK TAAHHÜT YETERLİ OLACAKKamu ve özel bankalar emeklilere 3 yıl taahhüt ile kendi şubelerinden maaş almaları durumunda emekli promosyon ödemesi yapıyor. Müşteri kazanma adına kampanya çalışmalarına başlayan bankalar rakamları daha da yukarıya taşıyacak. Bir dönem promosyonda müşteri kazanma rekabetiyle 10 bin TL rakamı görülürken çoğu banka emekli promosyonu ödemesini 7 bin TL'nin üzerine çıkardı. Ziraat Bankası, Halkbank ve Vakıfbank da emekli promosyon tutarlarını güncelledi.",
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