import 'package:flutter/material.dart';

class PartnerProfile extends StatelessWidget {
  final String imagePath, label;
  final bool active;
  const PartnerProfile({Key? key,
    required this.imagePath,
    required this.label, 
    required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 2.0,
      color: active? const Color.fromRGBO(250, 181, 137, 1) : Colors.grey[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath, fit: BoxFit.fitWidth,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(label, style: TextStyle(
              color: active? Colors.white : Colors.grey[900]
            ),),
          )
        ],
      ),
    );
  }
}
