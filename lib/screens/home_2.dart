import 'package:flutter/material.dart';

class HomeThird extends StatefulWidget {
  const HomeThird({Key? key}) : super(key: key);

  @override
  State<HomeThird> createState() => _HomeThirdState();
}

class _HomeThirdState extends State<HomeThird> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text("2"),),
    );
  }
}
