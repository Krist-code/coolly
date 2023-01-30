import 'package:coolly/custom_widgets/partner_profile.dart';
import 'package:coolly/custom_widgets/promo_card.dart';
import 'package:coolly/custom_widgets/service_card.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/home_header.dart';

class HomeFirst extends StatefulWidget {
  const HomeFirst({Key? key}) : super(key: key);

  static const _partnersList = [
    PartnerProfile(
      imagePath: "images/partner_01.png", label: "Fast-Food", active: true),
    PartnerProfile(
        imagePath: "images/partner_02.png", label: "Pizzeria", active: false),
    PartnerProfile(
        imagePath: "images/partner_03.png", label: "Restaurant", active: false),
    PartnerProfile(
        imagePath: "images/partner_02.png", label: "Pizzeria", active: false),
    PartnerProfile(
        imagePath: "images/partner_01.png", label: "Fast-Food", active: false)
  ];

  static Column homeBody = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: [
      SizedBox(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: HomeFirst._partnersList,
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(10.0),
        child: const Text("Nos Services", style: TextStyle(
          color: Color.fromRGBO(215, 3, 21, 1),
          fontSize: 20,
          fontFamily: "FONTSPRING DEMO - Lufga",
          fontWeight: FontWeight.w700,
        ),),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ServiceCard(imgPath: "images/courier_service.png"),
          ServiceCard(imgPath: "images/delivery_service.png"),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            PromoCard(imgPath: "images/promotions.png"),
          ],
        ),
      )
    ],
  );

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HomeHeader(
              titleMsg: "Hi Hyasenthe.",
              imgPath: "images/profile_pic.png",
              inputField: true),
          HomeFirst.homeBody
        ],
    );
  }
}
