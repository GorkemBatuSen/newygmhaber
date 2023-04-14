import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgessIndicatorWidget extends StatelessWidget {
  const ProgessIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.red,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
