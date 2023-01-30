import 'package:coolly/custom_widgets/splash_page_text_description.dart';
import 'package:coolly/screens/home.dart';
import 'package:coolly/screens/splash_page_2.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_header.dart';

class SplashFirstPage extends StatefulWidget {
  const SplashFirstPage({super.key});

  @override
  State<SplashFirstPage> createState() => _SplashFirstPageState();
}

class _SplashFirstPageState extends State<SplashFirstPage> {

    nextPage(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder:
            (context)=> const SplashSecondPage()));
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
                onPressed: () {},
                icon: const
                Icon(Icons.arrow_back_outlined,
                  size: 20,
                  color: Colors.transparent,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              TextDescription("Commander un coursier",
                  "Commandez un coursier, faites-vous livrer "
                      "ou faites livrer un colis et gagnez un "
                      "temps précieux"),
            ],
          ),
          Image.asset("images/splash_screen_1.png", fit: BoxFit.fill,),
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
          ))
        ],
      ),
    );
  }

}