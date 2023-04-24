import 'package:flutter/material.dart';
class InformationLogin extends StatelessWidget {
  final String returnmk;
  const InformationLogin({Key? key, required this.returnmk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card (
       child: Text(returnmk,style:const TextStyle(fontWeight:FontWeight.bold,
      fontSize: 10,
      color: Colors.red)),
      );
  }
}

