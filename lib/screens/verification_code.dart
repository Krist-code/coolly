import 'package:coolly/screens/reset_method.dart';
import 'package:coolly/screens/sign_up.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';
import 'login.dart';
import 'new_password.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {

  Widget _formInput(String hint){
    return   Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15),
      margin: const EdgeInsets.symmetric(vertical: 15.0, ),
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[300],
      ),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
          ),
        ),
      )
    );
  }

  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const ResetPassWordMethodPage()));
  }

  goToNewPassword(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const NewPassWordPage()));
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
            TextDescription("Verification",
                "Entrez le code de vérification que nous venons de vous envoyer"),
          ),
          Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _formInput("7"),
                      _formInput("7"),
                      _formInput("2"),
                      _formInput("8"),
                      _formInput("5"),
                      _formInput("9"),
                    ],
                  ),
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
                        onTap: goToNewPassword,
                        child: const Center(
                            child: Text("Vérifier le code",
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
