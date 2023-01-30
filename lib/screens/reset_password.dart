import 'package:coolly/screens/reset_method.dart';
import 'package:coolly/screens/sign_up.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:coolly/screens/verification_code.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';
import 'login.dart';

class ResetPassWordPage extends StatefulWidget {
  const ResetPassWordPage({Key? key}) : super(key: key);

  @override
  State<ResetPassWordPage> createState() => _ResetPassWordPageState();
}

class _ResetPassWordPageState extends State<ResetPassWordPage> {

  Widget _formInput(String hint){
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
            TextDescription("Reinitialisation du mot de passe",
                "Mot de passe oublié ? Pas de soucis"
                    "Entrez le numéro de téléphone ou l’adresse email associée "
                    "à votre compte pour réinitialiser"),
          ),
          Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _formInput("Numéro de téléphone ou adresse email"),
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
                        onTap: goToResetMethod,
                        child: const Center(
                            child: Text("Continuer",
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
                      children: const [

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
