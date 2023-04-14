import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay4 extends StatelessWidget {
  const HaberDetay4({super.key});

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
                        child:Card(
                          margin: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Padding(padding: const EdgeInsets.all(8.0),
                                  child: Text("Kılıçdaroğlu, CHP Genel Merkezi’nde: Sevgili halkım, eyvallah, başlıyoruz",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/haberler21.webp")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Saadet Partisi Genel Başkanı Temel Karamollaoğlu‘nun ev sahipliğindeki “Millet İttifakı” toplantısının ardından ortak Cumhurbaşkanı adayı olarak ilan edilen CHP Genel Başkanı Kemal Kılıçdaroğlu, toplantının ardından kendini bekleyen partililere, Genel Merkez’in önünden seslendi.İmamoğlu ve Yavaş’la birlikte kürsüye çıktılarKemal Kılıçdaroğlu, eşi Selvi Kılıçdaroğlu ile kürsüye çıktı. Depremde hayatını kaybedenlerin anısına 1 dakikalık saygı duruşunda bulunuldu.Ardından “Cumhurbaşkanı Yardımcısı” olarak kürsüye İstanbul Büyükşehir Belediye Başkanı Ekrem İmamoğlu ve Ankara Büyükşehir Belediye Başkanı Mansur Yavaş da davet edildi.‘Bir seçimi kazanmaktan fazlasına adayım’Burada kısa bir konuşma yapan Kılıçdaroğlu şunları söyledi:“Sayın İmamoğlu ve Sayın Yavaş ile bir yola çıktık. Güzel bir gecedeyiz. Huzur içinde yaşamak istiyoruz.Bir adaydan öte bir değişimin temsilcisi olarak karşınızdayım. Ben ve ittifakımız bu ülkeyi akılla, erdemle, liyakatle yönetmeye adayız.Bir seçimi kazanmaktan fazlasına adayım. Gönülleri kazanmaya, korkuşları aşmaya, küskünleri barıştırmaya adayım. Sadece ben değil, oy vermeye gidecek olan herkes bu ülkeyi hak ettiği yaşam için değiştirmeye aday.Ben uzun bir yolculuktan geldim. Heybemi bu güzel insanların öyküleriyle doldurdum. Şimdi onlarla birlikte adayım. Bize kader dedikleri bu nizamı değiştirmek istiyoruz.Sevgili halkım, sevgili dostlarım, sevgili kardeşlerim; kimler aday biliyor musunuz, Ankara’da elektriği kesilen İbrahim‘e misafir oldum. İbrahim Bey adaydır. Bartın‘da maden faciasında hayatını kaybeden maden işçisi Rıdvan‘ın ailesini ziyaret etmiştim. Rahmetli Rıdvan’ın oğlu Emrullah adaydır.Şanlıurfa‘da evladı için nöbet tutan Emine Şenyaşar’a sarıldım. Emine Hanım adaydır. 8 Şubat’ta Samandağ’da, içeride annem, ağabeyim ve babam var. Ses veriyorlar, termal kamerada ısı da var ama girecek ekipman yok diye bize feryat eden gencimiz aday. Tüm depremzedeler aday, böyle bilmeniz gerekiyor.Ekmeğini çöpten çıkaran, ekmek teknesi gasp edilen kağıt toplayıcılarının deposuna gittim, çaylarını içtim. İşte oradaki Bağder Bey aday. Süt veren ineğimi kesip kredimi ödüyorum diye feryadını dinlediğim çiftçi Meliha Hanım aday.28 Şubat sürecinde öğretmenlik mesleğinden atılan Sultan Kara ve ailesine gittim, onları dinledim, Sultan Hanım da aday. Ergenekon kumpasıyla canına kastettikleri Kuddisi Okkır’ın evine gittim. Beni metanetle karşılayan Sabriye Okkır Hanım da aday. Torbacılara öldürttükleri Sinan Ateş’in eşi Ayşe Hanım da aday.Çaldıkları 418 milyar doları isteyen herkes aday. Sadece bana oy vermeyeceksiniz; kendiniz, sevdikleriniz ve geleceğiniz için oy vereceksiniz. Bu topyekun bir değişimin başlangıcı. Hak ettiğimiz düzeni yeniden kuracağız.Aday ben değilim, aday hepimiziz.Sevgili halkım, eyvallah, başlıyoruz.”",
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