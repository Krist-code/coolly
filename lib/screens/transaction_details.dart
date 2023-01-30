import 'package:coolly/screens/home_1.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.80,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: const Text("Dimanche, 25 Décembre 2022",
                  style: TextStyle(
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),),
              ),
              InkWell(
                onTap: (){ Navigator.pop(context);},
                child: Container(
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.cancel_presentation_outlined,
                    color: Color.fromRGBO(215, 3, 12, 1),),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("13.500 FCFA",
                      style: TextStyle(
                        fontFamily: "FONTSPRING DEMO - Lufga",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const Text("Course",
                        style: TextStyle(
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color.fromRGBO(250, 181, 137, 1)
                        ),),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 4.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 3.0  ),
                  child: const Text("Détails de la course",
                    style: TextStyle(
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),),
                ),
                const Text("Réf : Coollyt7klm82",
                  style: TextStyle(
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color.fromRGBO(250, 181, 137, 1)
                  ),),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0),),
              color: Colors.grey[200],
            ),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Contenu de la course", style: TextStyle(
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                  fontSize: 14, color: Colors.black,
                ),),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Achat d’une bouteille de gaz Bocom",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 13, color: Colors.grey[900],
                        ),
                      ),
                      const Text("6.500F",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                        ),
                      )
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, left: 8.0, right: 8.0, bottom: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Achat d’un paquet de 50 cache-nez",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 13, color: Colors.grey[900],
                        ),
                      ),
                      const Text("4.500F",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                          )
                      )
                    ],),
                ),
                const Divider(color: Colors.black,thickness: 1.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Frais de course",
                        style: TextStyle(
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 13, color: Colors.grey[900],
                        ),
                      ),
                      const Text("2.500F",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                          )
                      )
                    ],),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 4.0, top: 8.0, right: 8.0, left: 8.0,),
                  child: const Text("Adresses", style: TextStyle(
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                    fontSize: 14, color: Colors.black,
                  ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(1.0),
                  alignment: Alignment.centerLeft,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Adresse de départ :",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                              ),
                            ),
                            Text("Ndogbong, commissariat 10e",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 13, color: Colors.grey[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Adresse intermédiare :",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                              ),
                            ),
                            Text("Bocom Bonamoussadi",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 13, color: Colors.grey[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Adresse finale :",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                              ),
                            ),
                            Text("Ndogbong, commissariat 10e",
                              style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 13, color: Colors.grey[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 8.0, bottom: 6.0, left: 8.0, right: 8.0),
                  child: const Text("Coursiers", style: TextStyle(
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                    fontSize: 14, color: Colors.black,
                  ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 2.0, left: 8.0, right: 8.0),
                        child: Text("Coursier en charge :",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 13, color: Color.fromRGBO(250, 181, 137, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, left: 8.0, right: 8.0),
                        child: Text("Steve Nosse",
                          style: TextStyle(
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 13, color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text("13.500 FCFA", style: TextStyle(
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w700,
                    fontSize: 14, color: Color.fromRGBO(250, 181, 137, 1),
                  ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                          Icons.sim_card_download_outlined),
                      Text("Télécharger", style: TextStyle(
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                        fontSize: 14, color: Colors.black,
                      ),)
                    ],
                  ),
                ),
                InkWell(
                  child: Row(
                    children: const [
                      Icon(
                          Icons.sim_card_download_outlined),
                      Text("Imprimer", style: TextStyle(
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                        fontSize: 14, color: Colors.black,
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
