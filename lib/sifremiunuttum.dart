import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sifremiunuttum extends StatefulWidget {
  const sifremiunuttum({Key? key}) : super(key: key);

  @override
  State<sifremiunuttum> createState() => _sifremiunuttumState();
}

class _sifremiunuttumState extends State<sifremiunuttum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/ygm.png",
              fit: BoxFit.contain,
              height: 52,
            ),
            SizedBox(width: 48),
          ],
        ),
      ),
      body: Text("ŞUANDA ÇALIŞMA YAPILIYOR"),
    );
  }
}
