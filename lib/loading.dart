import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ygmhaber/HomePage.dart';

class LoadingEkran extends StatefulWidget {
  const LoadingEkran({Key? key}) : super(key: key);

  @override
  State<LoadingEkran> createState() => _LoadingEkranState();
}

class _LoadingEkranState extends State<LoadingEkran> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.black,
child: Stack(
  children: [
    Center(
    child: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white54,
              blurRadius: 10,
              offset: Offset(0,1),

            ),
          ]
        ),
        child: Center(
          child: SpinKitCubeGrid(
            color: Colors.red[900],
            size: 50,
          ),
        ),
      ),
    ),
    ),
  ],
),
    );
  }
}
