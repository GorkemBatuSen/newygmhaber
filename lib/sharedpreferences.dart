import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ygmhaber/HomePage.dart';
import 'package:ygmhaber/giris.dart';

class Shared extends StatefulWidget{
  const Shared({super.key});

  @override
  State<StatefulWidget>createState()=>SharedState();
}
class SharedState extends State<Shared>{
  bool _obscureText = true;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final genelController = GlobalKey<FormState>();

  //List<String>kayitlar=["$nameStr","$mailStr","$password"];

  String nameStr= "";
  String mailStr= "";
  bool kayitdurumu = false;
  String password = "";



@override
void dispose(){
  _nameController.dispose();
  _emailController.dispose();
  _passwordController.dispose();
  super.dispose();
}
void kayitYap (String gName , String gMail , String gPassword) async{
final kayitAraci= await SharedPreferences.getInstance();
 /*List<String> kullanicilarListe=[] ;
 kullanicilarListe.add("$gName");
 kullanicilarListe.add("$gNPassword");
 kullanicilarListe.add("$gMail");*/

if(genelController.currentState!.validate()){
 kayitAraci.setBool("durum", true);
 kayitAraci.setString("şifre", gPassword);
 kayitAraci.setString("isim", gName);
 kayitAraci.setString("mail", gMail);
 Fluttertoast.showToast(
   msg:"Kayıt Başarılı bir şekilde gerçekleşti",
       toastLength: Toast.LENGTH_LONG,
   gravity: ToastGravity.BOTTOM,
  );
}
}

void kayitGoster () async{
  final kayitAraci= await SharedPreferences.getInstance();
  bool? kDurum = kayitAraci.getBool("durum");
  String? kSifre = kayitAraci.getString("şifre");
  String? kIsim = kayitAraci.getString("isim");
  String? kMail = kayitAraci.getString("mail");

  setState(() {

    nameStr=kIsim!;
    mailStr=kMail!;
    kayitdurumu = kDurum!;
    password = kSifre!;
  });
  Fluttertoast.showToast(
    msg:"Kayıt Başarılı bir şekilde gösterildi",
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
      title: Text("KAYIT OLMA",style: TextStyle(color: Colors.white),),
    ),
    body: SingleChildScrollView(
      child: Form(
        key: genelController,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white54,
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/kullanici2.png"),
                ),
              ),
              Card(
              child:TextFormField(
                validator: (deger){
                  if(deger!.isEmpty){
                    return "lütfen isminizi yazın";
                  }
                },
                controller: _nameController,
                decoration: InputDecoration(hintText: "İsminizi giriniz",
                  prefixIcon: Icon(Icons.man, color: Colors.red[900]),
                ),
              ),
              ),
              Card(
              child:TextFormField(
                validator: (deger){
                  if(deger!.isEmpty){
                    return "lütfen mailinizi yazın";
                  }
                },
                controller: _emailController,
                decoration: InputDecoration(hintText: "Mailinizi giriniz",
                  prefixIcon: Icon(Icons.mail, color: Colors.red[900]),
                ),
              ),
              ),
              Card(
                child: TextFormField(
                  //obscureText: true,
                  validator: (deger){
                    if(deger!.isEmpty){
                      return "lütfen şifrenizi yazın";
                    }
                  },
                  controller: _passwordController,
                  decoration: InputDecoration(hintText: "Şifrenizi giriniz",
                    prefixIcon: Icon(Icons.password, color: Colors.red[900]),

                   /* suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility,color: Colors.red[900]),
                    ),*/
                  ),
                ),
              ),
              /*Card(
                child: TextFormField(
                  validator: (deger){
                    if(deger!.isEmpty){
                      return "lütfen şifrenizi yazın";
                    }
                  },
                  controller: _passwordController,
                  decoration: InputDecoration(hintText: "Şifrenizi tekrar giriniz",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility,color: Colors.red[900]),
                    ),
                  ),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child:Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                            onPressed: ()=>kayitYap(_nameController.text,_emailController.text,_passwordController.text),
                            child:Text(
                              "Kaydet",
                              style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ),
                        )
                    ),
                   /* Expanded(
                        child:Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                            onPressed: ()=>kayitGoster(),
                            child:Text(
                              "Bilgilerim",
                              style: TextStyle(
                              color: Colors.black,
                            ),
                            ),
                          ),
                        )
                    ),*/
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
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: IconButton(onPressed: (){
                Navigator.pop(context);
                },
                icon: Icon(Icons.login),iconSize: 40,color: Colors.black,),
              ),
             /* Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("İsim: $nameStr"),
                    Text("Mail: $mailStr"),
                    Text("Şifre: $password"),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
    ),
  );
  }
}