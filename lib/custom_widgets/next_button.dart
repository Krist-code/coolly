import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      margin: const EdgeInsets.only(top: 25.0, right: 15.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(215, 3, 21, 1),
      ),
      child: InkWell(
        child: const Center(
            child: Text("Next",
              style: TextStyle(
                color: Colors.white,
              ),
            )
        ),
      )
    );
  }
}
