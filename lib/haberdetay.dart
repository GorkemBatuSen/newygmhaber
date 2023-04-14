import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay1 extends StatelessWidget {
  const HaberDetay1({super.key});

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
        child: Text("Aydın'da kan donduran görüntü!",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
            textAlign: TextAlign.center,),
        ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(image: AssetImage("assets/haber1.jpg")),
      ),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
      "Aydın'ın Efeler ilçesinde bir şahıs, sokak ortasında yere yatırdığı adamı yüzünden ve vücudunun çeşitli yerlerinden yaraladı. Bununla da yetinmeyen şahıs, yerde acıdan kıvranmakta olan adamın kulağına bıçak sapladı. Olayın görüntüleri adeta kan dondurdu.Akşam saatlerinde, Orta Mahalle 203. Sokak'ta meydana gelen olayda, T.E. isimli şahıs, A.Y. isimli şahsı kaldırımın kenarına yatırıp yüzünden ve vücudunun çeşitli yerlerinden bıçakla yaraladı.GERİ GELİP KULAĞINA BIÇAK SAPLADIYaşanan vahşeti görenlerin bağrışması ve 'Ne yapıyorsun sen?' diye seslenmesi üzerine A.Y.'nin başından kalkan T.E., kısa bir süre sonra tekrar yanına geldiği şahsın bu defa kulağına bıçak sapladı. Yaşananlar bir vatandaşın kamerasına yansıdı. 31 suç kaydı bulunan şüphelinin cezaevinden yeni çıktığı öğrenildi.HAYATİ TEHLİKESİ VARÇevredekilerin ihbarı üzerine olay yerine gelen 112 ekiplerince Aydın Devlet Hastanesi'ne kaldırılan A.Y.'nin durumunun ağır olduğu ve hayati tehlikesi bulunduğu öğrenildi. Olaydan sonra operasyon başlatan Aydın Emniyet Müdürlüğü ekipleri, kısa sürede şüpheliyi yakalayarak gözaltına aldı.31 SUÇTAN SABIKASI VARŞüpheli T.E.'nin uyuşturucu maddeden adam yaralama olayına kadar pek çok suçtan 31 ayrı sabıka dosyasının bulunduğu ve cezaevinden yeni çıktığı öğrenildi. Olayda yaralanan A.Y.'nin de uyuşturucu ve diğer suçlar olmak üzere çeşitli sabıkalarının bulunduğu öğrenilirken, olayla ilgili soruşturma ve tahkikatın çok yönlü olarak sürdürüldüğü bildirildi.",
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
