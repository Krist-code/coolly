import 'package:coolly/screens/reset_password.dart';
import 'package:coolly/screens/sign_up.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
        MaterialPageRoute(builder: (context)=> const SplashThirdPage()));
  }

  goToResetPassword(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const ResetPassWordPage()));
  }

  goToSigneUp(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const SignUpPage()));
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
              TextDescription("Bon retour parmi nous",
                  "Connectez-vous pour continuer"),
          ),
          Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _formInput(Icons.account_circle_outlined,"Numéro de téléphone ou adresse email"),
                    _formInput(Icons.key_outlined,"Mot de passe"),
                     Container(
                       margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0 ),
                       child: InkWell(
                         onTap: goToResetPassword,
                         child: const Text(
                           "Mot de passe oublié ?",
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: (MediaQuery.of(context).size.width / 2) - 20,
                              height: 50.0,
                              margin: const EdgeInsets.only(top: 25.0, right: 15.0),
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Color.fromRGBO(215, 3, 21, 1),
                              ),
                              child: InkWell(
                                onTap: ()=>{},
                                child: const Center(
                                    child: Text("Connexion",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                ),
                              )
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 25.0, right: 15.0),
                              child: InkWell(
                                onTap: goToSigneUp,
                                child: const Center(
                                    child: Text("Créer un compte",
                                      style: TextStyle(
                                        fontFamily: "Open Sans",
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
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
