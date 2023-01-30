import 'package:flutter/material.dart';

import 'splash_page_1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    _goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(
            children: [
              Positioned(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                    child: (Image.asset("images/coolly_icon.png")),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width ,
                bottom: 0.0,
                child: Center(
                    child: (Image.asset("images/coolly_logo.png", fit: BoxFit.fill,)),
                ),
              ),
            ],
          ),
      );
  }
  
  _goToHome() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const SplashFirstPage()));
  }
}

