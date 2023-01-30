import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {

  final titleMsg, imgPath;
  final bool inputField;
  const HomeHeader({Key? key, required this.titleMsg, required this.imgPath, required this.inputField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchField= Container(
        padding: const EdgeInsets.all( 8.0),
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0 ),
        width: MediaQuery.of(context).size.width ,
        height: 44.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey[300],
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 44.0,
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Taper pour rechercher",
              icon:  Icon(
                Icons.search_outlined,
                color: Colors.grey[900],
                size: 20.0,),
            ),
          ),
        )
    );

    Widget balance  = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text("Votre solde",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              fontFamily: "Open Sans",
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text("11.300 FCFA",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: "Open Sans",
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      padding: const EdgeInsets.only(top: 35.0, left: 25.0, right: 25.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        color: Color.fromRGBO(215, 3, 21, 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                titleMsg,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily:  "FONTSPRING DEMO - Lufga",
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 65,
                height: 65,
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(250, 181, 137, 1)
                ),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,),
              )
            ],
          ),
          inputField? searchField : balance,
        ],
      ),
    );
  }
}
