import 'package:flutter/material.dart';
class navigation_bar extends StatelessWidget {
  const navigation_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
      BottomNavigationBarItem(
        label: "Nais",
          icon: Icon (Icons.home)),
      BottomNavigationBarItem(
          label: "Nais 2",
          icon: Icon (Icons.home))
    ]);
  }
}
