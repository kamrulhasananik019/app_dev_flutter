import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class navigation_bar extends StatefulWidget {


  @override
  State<navigation_bar> createState() => _navigation_barState();
}

class _navigation_barState extends State<navigation_bar> {
 int _navigatorvalue = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 30,
      selectedFontSize: 17,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      iconSize: 34,
      backgroundColor: Colors.blue,
      currentIndex: _navigatorvalue,

      onTap: (int indexvalue){


        setState(() {
          
          _navigatorvalue = indexvalue;
        });
      },
        items: [
      BottomNavigationBarItem(
        label: "Nais",
          icon: Icon (Icons.home)),
      BottomNavigationBarItem(
          label: "Nais 2",
          icon: Icon (Icons.home)),
          BottomNavigationBarItem(
              label: "Nais 3",
              icon: Icon (Icons.home)),
    ]);
  }
}
