import 'package:coolly/screens/home_1.dart';
import 'package:flutter/material.dart';

class WalletListItem extends StatelessWidget {
  final bool typePayment, active ;
  final String label, identifier, amount, time;

  const WalletListItem({Key? key,
    required this.typePayment,
    required this.label,
    required this.identifier,
    required this.amount,
    required this.time,
    required this.active,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child:
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(250, 181, 137, 1)
                    ),
                    child: Center(
                        child:
                        typePayment?
                        Icon(Icons.file_upload_outlined, size: 30, color: Color.fromRGBO(215, 3, 21, 1),) :
                        Icon(Icons.file_download_outlined,size: 30, color: Color.fromRGBO(38, 174, 96, 1),)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label, style: TextStyle(
                        color: Color.fromRGBO(79, 79, 79, 1),
                        fontSize: 14,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                      ),),
                      Text(identifier, style: TextStyle(
                        color: Color.fromRGBO(79, 79, 79, 1),
                        fontSize: 13,
                        fontFamily: "Nexa Light",
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(amount, style: TextStyle(
                  color: typePayment?
                  Color.fromRGBO(215, 3, 21, 1) : Color.fromRGBO(38, 174, 96, 1) ,
                  fontSize: 14,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                ),),
                Text(time, style: TextStyle(
                  color: Color.fromRGBO(79, 79, 79, 1),
                  fontSize: 13,
                  fontFamily: "Nexa Light",
                  fontWeight: FontWeight.w400,
                ),),
              ],
            )
          ],
        ),),
    );
  }
}

