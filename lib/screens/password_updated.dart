import 'package:coolly/screens/sign_up.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:coolly/screens/verification_code.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';
import 'login.dart';
import 'new_password.dart';

class PassWordUpdatedPage extends StatefulWidget {
  const PassWordUpdatedPage({Key? key}) : super(key: key);

  @override
  State<PassWordUpdatedPage> createState() => _PassWordUpdatedPageState();
}

class _PassWordUpdatedPageState extends State<PassWordUpdatedPage> {

  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const NewPassWordPage()));
  }

  goToHomePage(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                const InkWell(
                  child: Text(
                    "Passer",
                    style: TextStyle(
                      color: Colors.transparent,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: const
            TextDescription("Mot de passe mis a jour",
                "Votre mot de passe à été mis à jour"),
          ),
          Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: (MediaQuery.of(context).size.width ),
                      height: 50.0,
                      margin: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        color: Color.fromRGBO(215, 3, 21, 1),
                      ),
                      child: InkWell(
                        onTap: goToHomePage,
                        child: const Center(
                            child: Text("Se connecter",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                        ),
                      )
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      ]
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}
