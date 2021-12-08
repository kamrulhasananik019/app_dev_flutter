import 'package:flutter/material.dart';
import 'package:untitled4/homepage/homepage.dart';

import 'login.dart';
import 'signup.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage_dashboard(),
    );
  }
}
