import 'package:flutter/material.dart';
class CoverImageWidget extends StatelessWidget {
  final String imageUrl;

  const CoverImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery
        .of(context)
        .size
        .height;
    var widthScreen = MediaQuery
        .of(context)
        .size
        .height;
    return Image.asset(imageUrl,
      height: heightScreen/4,
      width: widthScreen,
      fit: BoxFit.cover,
    );
  }
}
