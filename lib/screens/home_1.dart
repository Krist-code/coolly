
import 'package:coolly/custom_widgets/home_header.dart';
import 'package:coolly/custom_widgets/wallet_list_item.dart';
import 'package:coolly/screens/payments.dart';
import 'package:coolly/screens/recharges.dart';
import 'package:flutter/material.dart';

import 'transaction_details.dart';

class HomeSecond extends StatefulWidget {
  const HomeSecond({Key? key}) : super(key: key);

  static getFresh(bool activate){
    _HomeSecondState().refreshPage(activate);
  }

  @override
  State<HomeSecond> createState() => _HomeSecondState();
}

class _HomeSecondState extends State<HomeSecond> {

  bool _active = true;

  refreshPage(bool newState){
    setState(() {
      _active = newState;
    });
  }

  _actionBtn(IconData icon, String label) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 40.0, color: Colors.grey[700],),
          Text(label, style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Nexa Light",
            fontSize: 13,
          ),)
        ],
      ),
    );
  }

  goToPaymentPage(){
    Navigator.of(context).push(
        MaterialPageRoute(builder:
            (context)=> const PaymentPage()));
  }

  goToRechargePage(){
    Navigator.of(context).push(
        MaterialPageRoute(builder:
            (context)=> const RechargePage()));
  }

  showTransactionsDetails(){
    return showDialog(context: context, builder: (context){
      return const Center(
        child: Material(
          type: MaterialType.transparency,
          child: TransactionDetails(),
        ),
      );
    });
  }

  _btnRecharge() {
    return InkWell(
      onTap: (){ showTransactionsDetails(); },
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 50,
        height: 50,
        margin: const EdgeInsets.all(15.0),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Color.fromRGBO(215, 3, 21, 1),
        ),
        child: const Text("Recharges", style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Nexa Light",
            fontSize: 13,
            color: Colors.white
           ),),
      ),
    );
  }

  _activitiesList(){
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text("Activités", style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Open Sans",
                fontSize: 14,
              )),
              Icon(Icons.keyboard_arrow_down_outlined, size: 14,)
            ],
          ),
        ],
      ),
    );
  }
  
  List<Widget> get _activityItems => [
     WalletListItem(typePayment: true,
        label: "Course",
        identifier: "Coollyt7klm82",
        amount: "2.300 FCFA", time: "22 : 17", active: _active),
    WalletListItem(typePayment: true,
        label: "Livraison", 
        identifier: "Coollykml52x2", 
        amount: "1.100 FCFA", time: "19 : 28", active: _active,),
    WalletListItem(typePayment: false,
        label: "Recharge",
        identifier: "Coollypm25klo",
        amount: "5.000 FCFA", time: "18 : 15", active: _active,)
  ];

  subList(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(15.0),
          child:const Text("Dimanche, 25 Décembre 2022", style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Nexa Light",
            fontSize: 14,
          )),
        ),
        SizedBox( height: MediaQuery.of(context).size.width,
          child: ListView(
            children: _activityItems,
          ),
        )
      ],
    );
  }

  listDisplay(){
    return ListView(
      children: [subList(),subList()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const HomeHeader(
                titleMsg: "Mon portefeuille",
                imgPath: "images/profile_pic.png",
                inputField: false),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: goToPaymentPage,
                          child: _actionBtn(Icons.file_upload_outlined, "Paiements"),
                        ),
                        InkWell(
                          onTap: goToRechargePage,
                          child: _actionBtn(Icons.file_download_outlined, "Recharges"),
                        )
                      ],
                    ),
                    _btnRecharge(),
                  ],
                ),
                _activitiesList(),
                subList(),
              ],
            )
          ],
        ),
      ],
    );
  }
}

