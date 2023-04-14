import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay6 extends StatelessWidget {
  const HaberDetay6({super.key});

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
                                  child: Text("Bakan Kasapoğlu: 'Süper Lig 2 hafta boyunca şifresiz yayınlanacak'",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/spor1.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Gençlik ve Spor Bakanı Mehmet Muharrem Kasapoğlu, 3-13 Mart tarihlerinde oynanacak Spor Toto Süper Lig maçlarının şifresiz yayınlanacağını söyledi.Gençlik ve Spor Bakanlığı, Türkiye Futbol Federasyonu (TFF), Süper Lig Kulüpler Birliği Vakfı ve beIN Medya Grubu iş birliği ile organize edilen, A Spor, beIN Sports, Sportstv, D Smart Spor, S Sport, Tivibu Spor, TRT Spor, TV8 ve kulüp televizyonları ile TRT Radyo, Radyo Gol, Radyospor ve Lig Radyo'nun yanı sıra birçok dijital medya kanalından canlı yayınlanan yardım ve dayanışma kampanyasının açılış konuşmasını Gençlik ve Spor Bakanı Mehmet Muharrem Kasapoğlu yaptı.Bakan Kasapoğlu, millet olarak zor günlerden geçtiklerini anlatarak, 'Acımızı hafifletecek yol, ortak değerlerimizi bir araya getirmek, birlik ve beraberlik içinde olmaktır. Depremin ilk anından itibaren aziz milletimiz bu ruhu gösterdi. Devletimiz ve milletimiz ilk andan itibaren omuz omuza oldu. Allah'ın izniyle omuz omuza süreci birlikte yürüteceğiz. Peş peşe yaşanan depremlerde spor camiamızın birbirine sımsıkı kenetlenmesi, yaraları sarmak için seferber olması gurur verici. Elini taşın altına koyan camianın her ferdiyle gurur duyuyorum. İnşallah bu gecede aynı birlik ve beraberliği taçlandıracağız.' ifadelerini kullandı.Omuz omuza veren futbol camiasına teşekkür eden Kasapoğlu, 'Spor yalnızca fiziksel efor değildir. Spor bir dostluk köprüsü, centilmenlik dayanışmasıdır. Moral veren bir güçtür. Bu gece de buna şahitlik ediyoruz. Arması, forması birbirinden farklı olsa da ortak duyguların birleştiği tarihe geçen bir dayanışma örneği sergileniyor.' diye konuştu.Spor camiasının sadece zor günlerde değil her daim bu birlik ve beraberliği ortaya koymasını temenni eden Gençlik ve Spor Bakanı Kasapoğlu, şunları kaydetti:'Bugünler de elbet geçecek. Yaralarımızı sararken sporun iyileştiren, birleştiren gücünü her daim göstereceğiz. Kıymetli sporseverlere şunu ifade ediyorum, Gençlik ve Spor Bakanlığı olarak liglerimizin yayıncısı beIN Medya Grubu'yla görüşme neticesinde, sporun birleştirici gücünü vurgulamak maksadıyla ligin önümüzdeki iki haftasında tüm futbol müsabakaları şifresiz herkese açık olacak. Bu projeye destek verenlere ve pozitif havayı oluşturan herkese teşekkür ediyorum.'Spor Toto Süper Lig’in iki haftası TOD’dan ücretsiz yayınlanacakAfet nedeniyle ara verilen Spor Toto Süper Lig, 3 Mart Cuma günü Corendon Alanyaspor-Medipol Başakşehir FK arasında oynanacak maçla yeniden başlıyor. Ligin ertelenmesinden dolayı, 3 - 6 Mart arasında oynanacak 24’üncü hafta maçları ile 10 - 13 Mart arasında oynanacak 25’inci hafta maçlarının tamamı, yayın hayatına 21 Kasım’da başlayan beIN MEDIA GROUP’un yeni dijital içerik platformu TOD üyelerine ücretsiz olarak yayınlayacak. Maçların yanı sıra izleyiciler aynı zamanda dizi, film, belgesel ve TV canlı yayınlarını da 3 - 13 Mart arasında ücretsiz olarak TOD üzerinden izleyebilecek.Omuz Omuza kampanyasına destek olmak için DESTEK yazıp 8332'ye SMS göndererek 50 liralık bağışta bulunabilirsiniz. Yine aynı şekilde, omuzomuza.org internet sitesi üzerinden hem kart hem de havale ve EFT ile bağışınızı gerçekleştirebilirsiniz.",
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