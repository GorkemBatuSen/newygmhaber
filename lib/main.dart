import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ygmhaber/giris.dart';
import 'package:ygmhaber/haberdetay2.dart';
import 'package:ygmhaber/haberdetay3.dart';
import 'package:ygmhaber/haberdetay4.dart';
import 'package:ygmhaber/haberdetay6.dart';
import 'haberdetay.dart';
import 'haberdetay10.dart';
import 'haberdetay11.dart';
import 'haberdetay12.dart';
import 'haberdetay13.dart';
import 'haberdetay5.dart';
import 'haberdetay7.dart';
import 'haberdetay8.dart';
import 'haberdetya9.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sp = await SharedPreferences.getInstance();
  bool? tema = sp.getBool("Tema");

  runApp(MyApp(tema));
}

class MyApp extends StatelessWidget {
  final bool? tema;

  const MyApp(this.tema, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: tema == true ? ThemeData.dark() : ThemeData.light(),
      home: const Giris(),
    );
  }
}

//Seçenekeler clası
class Secenek {
  final IconData icon;
  final String title;
  const Secenek({required this.icon, required this.title});
}

//Seçenekler listesi
const List<Secenek> secenekeler = <Secenek>[
  Secenek(title: "Gündem", icon: Icons.newspaper),
  Secenek(title: "Spor", icon: Icons.sports_baseball_outlined),
  Secenek(title: "Borsa", icon: Icons.money),
  Secenek(title: "Son Dakika", icon: Icons.hourglass_top),
];

class SecilenNesne extends StatelessWidget {
  final Secenek secim;
  const SecilenNesne({Key? key, required this.secim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textstyle = Theme.of(context).textTheme.bodySmall;
    return Card(
      child: Center(
        child: Column(
          children: [
            Icon(
              secim.icon,
              color: Colors.black,
            ),
            Text(
              secim.title,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class Gundem extends StatelessWidget {
  const Gundem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/haber1.jpg")),
                      Text(
                        "Aydın'da kan donduran görüntü! Sokak ortasında yere yatırdığı adamı defalarca bıçaklandı",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay1()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/haber2.jpg")),
                      Text(
                        "Osmaniye'de bir kişi depremden önce sattığı eve kiracı olarak geldi",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay2()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/haber3.jpg")),
                      Text(
                        "Bambaşka bir Elbistan'a uyanacağız' diyen Vali Gökmen Çiçek sözğnde durdu: Elbistan'da konteyner çarşılar 4 günde tamamlandı",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay3()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/haberler21.webp")),
                      Text(
                        "Kılıçdaroğlu, CHP Genel Merkezi’nde: Sevgili halkım, eyvallah, başlıyoruz",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay4()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Spor extends StatelessWidget {
  const Spor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        "Teknik direktör Okan Buruk yönetiminde dinamik ısınma ile başlayan idman, koşu çalışmasıyla devam etti.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay5()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay6()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay7()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
    );
  }
}

class Borsa extends StatelessWidget {
  const Borsa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/borsa1.jpg")),
                      Text(
                        "Moskova Borsası'nda TL ile işlemler başlıyor",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay8()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay9()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay10()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
    );
  }
}

class SonDakika extends StatelessWidget {
  const SonDakika({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/sondakika.jpg")),
                      Text(
                        "EYT'liler promosyona göre banka seçecek! 15 bin TL'yi bulabilir...(Hangi banka ne kadar EYT emekli promosyonu veriyor?)",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay11()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay12()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      ButtonBar(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HaberDetay13()));
                            },
                            child: Text(
                              "Habere Git",
                              style: TextStyle(color: Colors.red[900]),
                            ),
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
    );
  }
}