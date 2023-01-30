import 'package:coolly/custom_widgets/next_button.dart';
import 'package:coolly/custom_widgets/splash_header.dart';
import 'package:coolly/custom_widgets/splash_page_text_description.dart';
import 'package:coolly/custom_widgets/step_indication.dart';
import 'package:coolly/screens/splash_page_1.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SplashSecondPage extends StatefulWidget {
  const SplashSecondPage({super.key});

  @override
  State<SplashSecondPage> createState() => _SplashSecondPageState();
}

class _SplashSecondPageState extends State<SplashSecondPage> {
  nextPage(){
    return Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder:
            (context)=> const SplashThirdPage()));
  }

  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const SplashFirstPage()));
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
          const Image(
            image: AssetImage("images/splash_screen_2.png",),
            alignment: Alignment.center,
            fit: BoxFit.scaleDown,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextDescription("Efficace, rapide et fiable",
                  "Nos partenaires et nous prenons plaisir à"
                      " préparer vos courses et colis en toute sécurité "
                      "et à les acheminer jusqu’à vous")
            ],
          ),
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
                        width: 8.0,
                        height: 8.0,
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
                            color: Color.fromRGBO(215, 3, 21, 1)),
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
                          child: Text("Next",
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