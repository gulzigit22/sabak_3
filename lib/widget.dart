import 'package:flutter/material.dart';

class widgeter_1 extends StatelessWidget {
  const widgeter_1({
    Key? key,
    required this.red,
    required this.razmer,
    required this.razmer2,
    required this.text,
  });
  final Color red;
  final double razmer;
  final double razmer2;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white),
      )),
      height: razmer,
      width: razmer2,
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
