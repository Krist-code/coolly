import 'package:coolly/custom_widgets/wallet_list_item.dart';
import 'package:coolly/screens/home_1.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/splash_page_text_description.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

   void _pickDate(inContext) async {
    DateTime? pickDate = await showDatePicker(context: inContext,
      initialDate: DateTime.now(),
      firstDate: DateTime(20), lastDate: DateTime(20),);
  }

  goBack(){
    Navigator.of(context).pop();
  }

  _headerBar(){
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children:[
          Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: goBack,
                icon: const
                Icon(Icons.arrow_back_outlined,
                  size: 30,
                  color: Color.fromRGBO(215, 3, 21, 1),
                )
            ),
          ),
          Container(
            alignment: Alignment.center,
            child:
                const Text("Mes paiements", style:
                TextStyle(
                  color: Color.fromRGBO(215, 3, 21, 1),
                  fontSize: 20,fontFamily: 'FONTSPRING DEMO - Lufga',
                  fontWeight: FontWeight.w700,),),
          )
        ],
      ),
    );
  }

  _dateSelection(){
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("De", style:
                TextStyle(
                  color: Color.fromRGBO(215, 3, 21, 1),
                  fontSize: 14,fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,),),
                Container(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(79, 79, 79, 0.2),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                  width: (MediaQuery.of(context).size.width / 3) - 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "--/--/20",
                    ),
                  ),
                ),
                const Icon(Icons.calendar_today_outlined,
                  size: 24,
                  color: Color.fromRGBO(79, 79, 79, 1),
                ),
              ],
            )
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("A", style:
                TextStyle(
                  color: Color.fromRGBO(215, 3, 21, 1),
                  fontSize: 14,fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,),),
                Container(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(79, 79, 79, 0.2),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                  width: (MediaQuery.of(context).size.width / 3) - 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "--/--/20",
                    ),
                  ),
                ),
                const Icon(Icons.calendar_today_outlined,
                  size: 24,
                  color: Color.fromRGBO(79, 79, 79, 1),
                ),
              ],
            )
          ),

        ],
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
              Text("Récents", style: TextStyle(
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

  bool _active = false;

  List<Widget> get _activityItems => [
    WalletListItem(typePayment: true,
        label: "Course",
        identifier: "Coollyt7klm82",
        amount: "2.300 FCFA", time: "22 : 17", active: _active,),
    WalletListItem(typePayment: true,
        label: "Livraison",
        identifier: "Coollykml52x2",
        amount: "1.100 FCFA", time: "19 : 28", active: _active),
    WalletListItem(typePayment: true,
        label: "Course",
        identifier: "Coollyt7klm82",
        amount: "2.300 FCFA", time: "22 : 17", active: _active),
    WalletListItem(typePayment: true,
        label: "Livraison",
        identifier: "Coollykml52x2",
        amount: "1.100 FCFA", time: "19 : 28", active: _active),
    WalletListItem(typePayment: true,
        label: "Course",
        identifier: "Coollyt7klm82",
        amount: "2.300 FCFA", time: "22 : 17", active: _active),
    WalletListItem(typePayment: true,
        label: "Livraison",
        identifier: "Coollykml52x2",
        amount: "1.100 FCFA", time: "19 : 28", active: _active),
    WalletListItem(typePayment: true,
        label: "Course",
        identifier: "Coollyt7klm82",
        amount: "2.300 FCFA", time: "22 : 17", active: _active),
    WalletListItem(typePayment: true,
        label: "Livraison",
        identifier: "Coollykml52x2",
        amount: "1.100 FCFA", time: "19 : 28", active: _active),
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
    return SizedBox(
      height: MediaQuery.of(context).size.width + 100,
      child: ListView(
        children: [subList(),subList()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _headerBar(),
          _dateSelection(),
          Column(
            children: [
              _activitiesList(),
              listDisplay(),
            ],
          )
        ],
      ),
    );
  }

}

