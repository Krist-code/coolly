import 'package:flutter/material.dart';

class HomeForth extends StatefulWidget {
  const HomeForth({Key? key}) : super(key: key);

  @override
  State<HomeForth> createState() => _HomeForthState();
}

class _HomeForthState extends State<HomeForth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text("3"),),
    );
  }
}
