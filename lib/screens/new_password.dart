import 'package:coolly/screens/password_updated.dart';
import 'package:coolly/screens/sign_up.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:coolly/screens/verification_code.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';
import 'login.dart';

class NewPassWordPage extends StatefulWidget {
  const NewPassWordPage({Key? key}) : super(key: key);

  @override
  State<NewPassWordPage> createState() => _NewPassWordPageState();
}

class _NewPassWordPageState extends State<NewPassWordPage> {

  Widget _formInput(IconData icon, String hint){
    return   Container(
        padding: const EdgeInsets.all( 8.0),
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0 ),
        width: MediaQuery.of(context).size.width - 3,
        height: 44.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 44.0,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  icon:  Icon(
                    icon,
                    color: Colors.grey[900],
                    size: 20.0,
                  ),
                ),
              ),
            ),
            Icon(Icons.visibility_off_outlined, color: Colors.grey[800],)
          ],
        )
    );
  }

  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const VerificationCodePage()));
  }

  goToPassWordUpdatePage(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const PassWordUpdatedPage()));
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
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: const
            TextDescription("Nouveau mot de passe",
                "Votre identité a été vérifié!"
                    "\nEntrez votre nouveau mot de passe"),
          ),
          Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _formInput( Icons.lock_outline,"Nouveau mot de passe"),
                  _formInput( Icons.lock_outline,"Confirmez votre nouveau mot de passe"),
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
                        onTap: goToPassWordUpdatePage,
                        child: const Center(
                            child: Text("Mettre à jour",
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
