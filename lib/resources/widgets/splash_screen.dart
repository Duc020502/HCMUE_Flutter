import 'dart:async';

import 'package:app_qlsv/resources/strings.dart';
import 'package:app_qlsv/views/home_screen.dart';
import 'package:flutter/material.dart';

import 'cover_image_widget.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  String title1=Name_App;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CoverImageWidget(imageUrl: "assets/images/login.png"),
            Text(title1,style:const TextStyle(fontWeight:FontWeight.w900,
                fontSize: 25,
                color: Colors.red)),
            const SizedBox(height:30),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black87),
            )
          ],
        ),
      ),
    );;
  }
}
