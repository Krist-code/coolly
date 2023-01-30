import 'package:coolly/custom_widgets/next_button.dart';
import 'package:coolly/custom_widgets/splash_page_text_description.dart';
import 'package:coolly/custom_widgets/step_indication.dart';
import 'package:coolly/screens/login.dart';
import 'package:coolly/screens/splash_page_2.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_header.dart';
import 'home.dart';

class SplashThirdPage extends StatefulWidget {
  const SplashThirdPage({super.key});

  @override
  State<SplashThirdPage> createState() => _SplashThirdPageState();
}

class _SplashThirdPageState extends State<SplashThirdPage> {

  nextPage(){
    return Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder:
            (context)=> const LoginPage()));
  }

  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const SplashSecondPage()));
  }

  skipSplash(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder:
            (context)=> const HomePage()));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                IconButton(
                    onPressed: previous,
                    icon: const
                    Icon(Icons.arrow_back_outlined,
                      size: 20,
                      color: Color.fromRGBO(215, 3, 21, 1),
                    )
                ),
                InkWell(
                  onTap: skipSplash,
                  child: const Text(
                    "Passer",
                    style: TextStyle(
                      color: Color.fromRGBO(215, 3, 21, 1),
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),),
              ],
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextDescription("Une livraison rapide",
                  "Profitez d’une livraison rapide et d’un "
                      "suivi en temps en réel de vos courses, "
                      "pour vous ou vos clients, directement à votre porte"),
            ],
          ),
          const Image(
            image: AssetImage("images/splash_screen_3.png",),
            alignment: Alignment.center,
            fit: BoxFit.scaleDown,),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25.0, left: 15.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 2.0),
                        width: 10.0,
                        height: 10.0,
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
                      ),
                      Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.only(left: 2.0),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(215, 3, 21, 1)),
                      )
                    ],
                  ),
                ),
                Container(
                    width: 50.0,
                    height: 50.0,
                    margin: const EdgeInsets.only(top: 25.0, right: 15.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(215, 3, 21, 1),
                    ),
                    child: InkWell(
                      onTap: nextPage,
                      child: const Center(
                          child: Text("Start",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}