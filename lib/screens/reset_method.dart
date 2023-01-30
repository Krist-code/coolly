import 'package:coolly/screens/reset_password.dart';
import 'package:coolly/screens/sign_up.dart';
import 'package:coolly/screens/splash_page_3.dart';
import 'package:coolly/screens/verification_code.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';
import 'login.dart';

class ResetPassWordMethodPage extends StatefulWidget {
  const ResetPassWordMethodPage({Key? key}) : super(key: key);

  @override
  State<ResetPassWordMethodPage> createState() => _ResetPassWordMethodPageState();
}

class _ResetPassWordMethodPageState extends State<ResetPassWordMethodPage> {

  int _groupValue = 1;

  get onRadioChange => (int inValue) {
    return setState((){ _groupValue = inValue;});
  };

  Widget _formInput(IconData icon, String hint, int radioValue){
    return   Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0 ),
      width: MediaQuery.of(context).size.width,
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
            Radio(value: radioValue, groupValue: _groupValue, onChanged: onRadioChange(radioValue))
          ],
        )
    );
  }


  previous(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const ResetPassWordPage()));
  }

  goToVerificationPage(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const VerificationCodePage()));
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
            TextDescription("Methode de verification",
                "Sélectionner le moyen par lequel vous souhaitez"
                    " recevoir votre code de vérification"),
          ),
          Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _formInput( Icons.chat_outlined,"******529", 1),
                  _formInput( Icons.chat_outlined,"**********the@gmail.com", 2),
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
                        onTap: goToVerificationPage,
                        child: const Center(
                            child: Text("Envoyer",
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
