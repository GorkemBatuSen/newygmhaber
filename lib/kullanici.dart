import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KullaniciSayfasi extends StatefulWidget {
  const KullaniciSayfasi({Key? key}) : super(key: key);

  @override
  State<KullaniciSayfasi> createState() => _KullaniciSayfasiState();
}

class _KullaniciSayfasiState extends State<KullaniciSayfasi> {
  bool _obscureText = true;
  late String kulanicismi;
  late String sifre;
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  var kayitlarim;

  @override
  void initState() {
    kullaniciData();
    super.initState();
  }

  String nameStr = "";
  String mailStr = "";
  bool kayitdurumu = false;
  String password = "";

  Future<void> kullaniciData() async {
    kayitlarim = await SharedPreferences.getInstance();
  }

  void kayitGoster() async {
    final kayitAraci = await SharedPreferences.getInstance();
    bool? kDurum = kayitAraci.getBool("durum");
    String? kSifre = kayitAraci.getString("şifre");
    String? kIsim = kayitAraci.getString("isim");
    String? kMail = kayitAraci.getString("mail");

    setState(() {
      nameStr = kIsim!;
      mailStr = kMail!;
      kayitdurumu = kDurum!;
      password = kSifre!;
    });
    Fluttertoast.showToast(
      msg: "Kayıt Başarılı bir şekilde gösterildi",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void kayitSil ()async{
    final kayitAraci= await SharedPreferences.getInstance();
    kayitAraci.clear();
    /* kayitAraci.remove("isim");
  kayitAraci.remove("mail");
  kayitAraci.remove("şifre");*/
    Fluttertoast.showToast(
      msg:"Kayıt Başarılı bir şekilde Silindi",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("Kullanıcı Bilgileri"),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 90.0,
              backgroundImage: AssetImage("assets/kullanici2.png"),
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Kullanici adi :",style: TextStyle(color: Colors.black, fontSize: 15,fontWeight:FontWeight.bold),),
                      Text("$nameStr",style: TextStyle(color: Colors.green, fontSize: 15,fontWeight:FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Kullanici mail :",style: TextStyle(color: Colors.black, fontSize: 15,fontWeight:FontWeight.bold)),
                      Text("$mailStr",style: TextStyle(color: Colors.green, fontSize: 15,fontWeight:FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Kullanici şifre :",style: TextStyle(color: Colors.black, fontSize: 15,fontWeight:FontWeight.bold)),
                      Text("$password",style: TextStyle(color: Colors.green, fontSize: 15,fontWeight:FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
                    onPressed: () => kayitGoster(),
                    child: Text(
                      "Bilgilerim",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red[900]),
                    onPressed: () => kayitSil(),
                    child:Text(
                      "Sil",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*class ProfilTasarim extends StatefulWidget {
  const ProfilTasarim({Key? key}) : super(key: key);

  @override
  State<ProfilTasarim> createState() => _ProfilTasarimState();
}

class _ProfilTasarimState extends State<ProfilTasarim> {
 late File yuklenecekDosya;
late String indirmeBaglantisi;

 kameradanYukle() async{
  var alinanDosya = await ImagePicker().getImage(source: ImageSource.camera);
  setState(() {
    yuklenecekDosya = File(alinanDosya!.path);
  });
  }
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Row(
          children: [
            ElevatedButton(onPressed: kameradanYukle, child: Text("Resi Yükleme"))
          ],
        ),
      );
    }
  }*/