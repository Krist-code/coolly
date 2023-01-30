import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  final String title, description;
  const TextDescription( this.title,this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      padding: const EdgeInsets.all(15.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: const TextStyle(
                color: Color.fromRGBO(215, 3, 21, 1),
              fontSize: 20.0,
              fontFamily: 'FONTSPRING DEMO - Lufga',
              fontWeight: FontWeight.w700,
                ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Text(description,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontSize: 13.0,
              fontFamily: 'Nexa Light',
              fontWeight: FontWeight.w400,
            )
            ),
          )
        ],
      ),
    );
  }
}
