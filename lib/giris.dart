import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ygmhaber/sharedpreferences.dart';
import 'package:ygmhaber/sifremiunuttum.dart';
import 'HomePage.dart';
import 'circularProgress.dart';
import 'loading.dart';

class Giris extends StatefulWidget {
  const Giris({Key? key}) : super(key: key);

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  bool _obscureText = true;
  late String kulanicismi;
  late String sifre;
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  var kayitlarim;
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

  Future<void> temaKaydi(bool value) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setBool("Tema", value);
    setState(() {
      _iconBool = value;
    });
    Fluttertoast.showToast(
      msg: "Tema Seçim İşlemi  Başarılı Bir Şekilde Gerçekleşti",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  bool _iconBool = false;

  IconData _iconAydinlik = Icons.wb_sunny;
  IconData _iconKaranlik = Icons.nights_stay;

  final ThemeData _aydinlikTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.red),
  );

  final ThemeData _karanlikTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.blueGrey),
  );

  @override
  void initState() {
    kullaniciData();
    super.initState();
    _getThemeValue();
  }

  Future<void> _getThemeValue() async {
    final sp = await SharedPreferences.getInstance();
    bool? temadegeri = sp.getBool("Tema");
    setState(() {
      _iconBool = temadegeri ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _iconBool ? _karanlikTheme : _aydinlikTheme,
        home: Scaffold(
          backgroundColor: Colors.red[50],
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: IconButton(
            icon: Icon(Icons.perm_device_information),
              onPressed: () => kayitGoster(),
          ),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            toolbarHeight: 170,
            actions: [
              IconButton(
                onPressed: () => temaKaydi(!_iconBool),
                icon: Icon(_iconBool ? _iconKaranlik : _iconAydinlik),
              ),
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/ygm.png",
                  fit: BoxFit.contain,
                  height: 70,
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                               /* Text(
                                  "Kullanici adı :",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),*/
                                Text("$nameStr",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                /*Text("Kullanici mail :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),*/
                                Text("$mailStr",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                /*Text("Kullanici şifre :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),*/
                                Text("$password",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[50]),
                        onPressed: () => kayitGoster(),
                        child: Text(
                          "Bilgilerim",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _nameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: "Kulanıcı Adı",
                          labelStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(
                            Icons.man,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "kullanıcı Adını Giriniz";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          kulanicismi = value!;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Şifre',
                          labelStyle: TextStyle(color: Colors.black),
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.black),
                          ),
                        ),
                        validator: (input) => input!.length < 6
                            ? 'Şifreniz en az 6 karakter olmalıdır'
                            : null,
                        onSaved: (input) => sifre = input!.trim(),
                        obscureText: _obscureText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                            height: 1,
                            child: Text(
                              "Üye ol",
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.combine(
                                      [TextDecoration.underline])),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Shared())); //SignupPage
                            }),
                        MaterialButton(
                            height: 1,
                            child: Text("Şifremi unuttum",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.combine([
                                      TextDecoration.underline,
                                    ]))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => sifremiunuttum())); //
                            }),
                      ],
                    ),
                    _girisbutonu(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _girisbutonu() => ElevatedButton(
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            _formkey.currentState!.save();
            if (kulanicismi == kayitlarim.getString("isim") &&
                sifre == kayitlarim.getString("şifre")) {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    Future.delayed(Duration(seconds: 3), () {
                      Navigator.of(context).pop(); // close the dialog
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    });

                    return Dialog(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                      child: Stack(
                        children: [
                          Center(
                            child: SpinKitCubeGrid(
                              color: Colors.red[900],
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Hata"),
                      content: Text(
                          "GİRİŞ BİLGİLERİNİZİ EKSİK YADA  HATALI GİRDİNİZ!"),
                      actions: [
                        MaterialButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Geri Dön",
                            style: TextStyle(color: Colors.red[900]),
                          ),
                        )
                      ],
                    );
                  }
                  );
            }
          }
        },
        child: Text(
          "Giriş",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
}
