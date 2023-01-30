import 'package:flutter/material.dart';
class ServiceCard extends StatelessWidget {
  final   String imgPath;
  const ServiceCard({Key? key, required this.imgPath}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imgPath, fit: BoxFit.fill,),
    );
  }
}
