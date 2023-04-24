import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final onPressed;
  final String buttonText;
  const CustomButton({Key? key,required this.onPressed,required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ,
      child: Container(
        padding: const EdgeInsets.only(top:15,left:30,right: 30 ,bottom: 15),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0)

          ),
          boxShadow: [
        BoxShadow(color: Colors.black54,
        offset : Offset(1.0,2.0),
          blurRadius : 8.0,
          spreadRadius : 2.0)
          ]

        ),
        child:  Text(buttonText,style:const TextStyle(fontWeight:FontWeight.w900,
            fontSize: 15,
            color: Colors.black87)),
      ),
    );
  }
}
