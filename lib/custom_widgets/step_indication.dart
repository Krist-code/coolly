import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0, left: 15.0),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 2.0),
            width: 10.0,
            height: 10.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(215, 3, 21, 1)),
          ),
          Container(
            width: 10.0,
            height: 10.0,
            margin: const EdgeInsets.only(left: 2.0),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 1)),
          ),
          Container(
            width: 10.0,
            height: 10.0,
            margin: const EdgeInsets.only(left: 2.0),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 1)),
          )
        ],
      ),
    );
  }
}
