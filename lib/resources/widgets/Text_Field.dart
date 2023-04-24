import 'package:flutter/material.dart';
class Inputwidget extends StatelessWidget {
  final String labelText;
  final Controller;

  const Inputwidget({Key? key, required this.labelText,required this.Controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(right: 10,left:5,top: 10,bottom: 0),
          child: TextField(
            // obscureText: true,
              decoration:InputDecoration(labelText:labelText,
                  border: const OutlineInputBorder(),
                  labelStyle: const TextStyle(color: Colors.black,fontSize: 20 )),
                  controller: Controller,
                  onChanged: (text){

                  },
          )

    );
  }
}


