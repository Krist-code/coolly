import 'package:flutter/material.dart';
class PromoCard extends StatelessWidget {
  final   String imgPath;
  const PromoCard({Key? key, required this.imgPath}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imgPath, fit: BoxFit.fill,),
    );
  }
}
