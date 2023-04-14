import 'package:flutter/material.dart';
import 'package:ygmhaber/Gundem.dart';
import 'package:ygmhaber/sharedpreferences.dart';
import 'Borsa.dart';
import 'SonDakika.dart';
import 'Spor.dart';
import 'giris.dart';
import 'kullanici.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: secenekeler.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          toolbarHeight: 80,
          // backgroundColor: Colors.red[900],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/ygm.png",
                fit: BoxFit.contain,
                height: 52,
              ),
              SizedBox(width: 8),
            ],
          ),
          bottom: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
              tabs: secenekeler.map<Widget>((Secenek sec) {
                return Tab(
                  text: sec.title,
                  icon: Icon(sec.icon),
                );
              }).toList()),
          actions: [
            /* IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            ),*/
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Shared()));
              },
              icon: Icon(
                Icons.notifications_active_sharp,
                color: Colors.white,
              ),
            ),
          ],
          //drawer iconunun rengini değiştirme
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(
          width:MediaQuery.of(context).size.width *0.8,
          backgroundColor: Colors.red[900],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SingleChildScrollView(
                child: DrawerHeader(
                  child: Image.asset(
                    "assets/ygm.png",
                    fit: BoxFit.contain,
                    height: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.red.shade900,
                      Colors.red.shade900,
                    ]),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Kullanıcı Bilgileri",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.manage_accounts_outlined,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KullaniciSayfasi()));
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Haber Bildirimleri",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.notifications_active_sharp,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shared()));
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Gündem",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.newspaper,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GundemSayfa()));
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Spor",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.sports_baseball_outlined,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SporSayfa()));
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Borsa",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.money,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BorsaSayfa()));
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),
                child: ListTile(
                  title: Text(
                    "Son Dakika",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.hourglass_top,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SonDakikaSayfa()));
                  },
                ),
              ),
              /*Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Tema Renkleri",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.color_lens_outlined,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                  },
                ),
              ),*/
              Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    "Çıkış Yap",
                    style: TextStyle(color: Colors.red.shade900, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.red.shade900,
                    size: 30,
                  ),
                  onTap: () {
                    send0tp();
                  },
                ),
              ),
            ],
          ),
        ),
        body: Container(
          /*decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/arkaplan1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),*/
          child: TabBarView(
            children: [
              Gundem(),
              Spor(),
              Borsa(),
              SonDakika(),
            ],
          ),
        ),
      ),
    );
  }

  void send0tp() {
    final route = MaterialPageRoute(builder: (context) => const Giris());
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }
}
