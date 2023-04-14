import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HaberDetay13 extends StatelessWidget {
  const HaberDetay13({super.key});

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
                                  child: Text("Depremlerden sonra merak konusu olmuştu! Cumhurbaşkanı Erdoğan seçim tarihini açıkladı: 14 Mayıs'ta millet gereğini yapacak",style: TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(image: AssetImage("assets/sondakika2.jpg")),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
"Son dakika haberi: Depremler öncesi 14 Mayıs olarak öne çıkan seçim tarihinin değişip değişmeyeceği merak konusu olmuştu. Felakete yol açan büyük depremler sonrası seçimlerin ertelenmesi yönünde çağrılar gelmişti. Cumhurbaşkanı Erdoğan 14 Mayıs'ı işaret ederek seçim tarihi tartışmalarına son verdi ve 'Bu millet gereğini yapacaktır' dedi.Son dakika haberi: Seçim tarihi netleşti! Partisinin TBMM Grup Toplantısı'nda açıklamalarda bulunan Cumhurbaşkanı Erdoğan, Türkiye'nin seçimlere 14 Mayıs'ta gideceğini açıkladı. Deprem bölgesinde yıkık, yıkılacak, ağır ve orta hasarlı tüm binaların 6 Şubat 2023 tarihi öncesi tüm borçlarının silineceğini duyuran Erdoğan ayrıca Afet Yeniden İmar Fonu kurulacağını ve Türkiye Ulusal Risk Kalkanı Modeli oluşturulacağını bildirdi. EYT düzenlemesinin yasalaşmasına değinen Erdoğan, 'Vergi dairelerine olan borçları yapılandıran kanun teklifi de gündemimizin önemli konularından biri' dedi. 'TÜRKİYE DEPREM FIRTINASINA TUTULDU' Erdoğan'ın açıklamalarından öne çıkanlar şu şekilde:Her ne kadar birileri kabul etmese de 'asrın felaketi' olarak nitelenen 6 Şubat tarihli depremler ile sonrasında gelen 11 bin 400'ün üzerinde sarsıntılar yaşadık. 62 ilçede ve 10 bin 190 köyde çok ciddi yıkıma sebep olan depremleri hala yaşamaya devam ediyoruz. İçinden geçtiğimiz sürecin normal bir durum olmadığını tüm bilim insanları söylüyor. Türkiye bir çeşit deprem fırtınasına tutuldu. Felaketleri engelleyemeyiz, bize düşen görev hazırlık yapmak, yaraları sarmak, yıkımları telafi etmektir. ",
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