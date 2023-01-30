import 'package:flutter/material.dart';

class SplashHeader extends StatelessWidget {

  const SplashHeader({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.centerRight,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          IconButton(
              onPressed: () => {},
              icon: const
              Icon(Icons.arrow_back_outlined,
                size: 30,
                color: Color.fromRGBO(215, 3, 21, 1),
              )
          ),
          const InkWell(
            child: Text(
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
    );
  }
}
