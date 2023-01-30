import 'package:coolly/screens/reset_method.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  Widget _formInput(IconData icon, String hint){
    return   Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0 ),
      width: MediaQuery.of(context).size.width,
      height: 44.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[300],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon:  Icon(
            icon,
            color: Colors.grey[900],
            size: 20.0,
          ),
          hintText: hint,
        ),
      ),
    );
  }

  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const LoginPage()));
  }

  goToResetMethod(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const ResetPassWordMethodPage()));
  }

  goToLoginPage(){
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
            TextDescription("Bienvenue",
                "Créez votre compte en 60 secondes top chrono"),
          ),
          Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _formInput(Icons.alternate_email_outlined,"Nom complet"),
                  _formInput(Icons.phone_outlined,"Numéro de téléphone"),
                  _formInput(Icons.lock_open_outlined,"Mot de passe"),
                  _formInput(Icons.lock_open_outlined,"Confirmez votre mot de passe"),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0 ),
                    child: InkWell(
                      onTap: goToLoginPage,
                      child: const Text(
                        "Déjà un compte ?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Nexa Light",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: (MediaQuery.of(context).size.width - 50),
                            height: 50.0,
                            margin: const EdgeInsets.only(top: 25.0, left: 15.0,right: 15.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Color.fromRGBO(215, 3, 21, 1),
                            ),
                            child: InkWell(
                              onTap: goToResetMethod,
                              child: const Center(
                                  child: Text("Créer mon compte",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                              ),
                            )
                        ),
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
