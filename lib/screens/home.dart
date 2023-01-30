import 'package:coolly/screens/home_1.dart';
import 'package:coolly/screens/home_2.dart';
import 'package:coolly/screens/home_3.dart';
import 'package:coolly/screens/home_0.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  final _pages = const[
    HomeFirst(),
    HomeSecond(),
    HomeThird(),
    HomeForth()
  ];


  
  @override
  Widget build(BuildContext context) {
    Size mSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [_pages.elementAt(_currentPage)],
          ),
          //Center( child: _pages.elementAt(_currentPage)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: mSize.height * 0.09,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NaveBarItem(
                          text: "Home",
                          icon: Icons.home,
                          active: _currentPage == 0,
                          onPressed: (){
                            setState(() {
                              _currentPage = 0;
                            });
                          }),
                      NaveBarItem(
                          text: "Portefeuille",
                          icon: Icons.payments_outlined,
                          active: _currentPage == 1,
                          onPressed: (){
                            setState(() {
                              _currentPage = 1;
                            });
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NaveBarItem(
                          text: "Historique",
                          icon: Icons.sticky_note_2_outlined,
                          active: _currentPage == 2,
                          onPressed: (){
                            setState(() {
                              _currentPage = 2;
                            });
                          }),
                      NaveBarItem(
                          text: "Notifications",
                          icon: Icons.notifications_none_outlined,
                          active: _currentPage == 3,
                          onPressed: (){
                            setState(() {
                              _currentPage = 3;
                            });
                          }),
                    ],
                  ),
                ],
              ),
              Center(
                heightFactor: 0.00,
                child: FloatingActionButton(
                    elevation: 0.0,
                    backgroundColor: const Color.fromRGBO(215, 3, 21, 1 ),
                    onPressed: () {  },
                    child: const Icon(Icons.add, color: Colors.white,size: 45,)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoollyBottomNavigationBar extends StatefulWidget {
  const CoollyBottomNavigationBar({super.key});

  @override
  State<CoollyBottomNavigationBar> createState() => _CoollyBottomNavBar();
}

class _CoollyBottomNavBar extends State<CoollyBottomNavigationBar> {
   int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size mSize = MediaQuery.of(context).size;

    return  BottomAppBar(
      elevation: 0,
      child: SizedBox(
        height: mSize.height * 0.09,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NaveBarItem(
                        text: "Home",
                        icon: Icons.home,
                        active: _selectedIndex == 0,
                        onPressed: (){
                          setState(() {
                            _selectedIndex = 0;
                          });
                        }),
                    NaveBarItem(
                        text: "Portefeuille",
                        icon: Icons.payments_outlined,
                        active: _selectedIndex == 1,
                        onPressed: (){
                          setState(() {
                            _selectedIndex = 1;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NaveBarItem(
                        text: "Historique",
                        icon: Icons.sticky_note_2_outlined,
                        active: _selectedIndex == 2,
                        onPressed: (){
                          setState(() {
                            _selectedIndex = 2;
                          });
                        }),
                    NaveBarItem(
                        text: "Notifications",
                        icon: Icons.notifications_none_outlined,
                        active: _selectedIndex == 3,
                        onPressed: (){
                          setState(() {
                            _selectedIndex = 3;
                          });
                        }),
                  ],
                ),
              ],
            ),
            Center(
              heightFactor: 0.00,
              child: FloatingActionButton(
                elevation: 0.0,
                backgroundColor: const Color.fromRGBO(215, 3, 21, 1 ),
                onPressed: () {  },
                child: const Icon(Icons.add, color: Colors.white,size: 45,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NaveBarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool active;
  final Function() onPressed;
  const NaveBarItem({super.key,
    required this.text, required this.icon,
    required this.active, required this.onPressed});

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.only(left: 6.0, right: 6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: onPressed,
                icon: Icon(icon, size: 23.0,
                color: active? const Color.fromRGBO(215, 3, 21, 1) : Colors.grey[800],)),
            Text(text, style: TextStyle(
              color: active? const Color.fromRGBO(215, 3, 21, 1) : Colors.grey[800],
            ),)
          ],
        ),
      );
  }
}
