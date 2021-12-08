import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled4/firstpage.dart';
import 'package:untitled4/main.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  getsharepref() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      user_name = pref.getString('user_name') ?? '';
      pass = pref.getString('pass') ?? '';
    });
  }

  String user_name = '';
  String pass = '';

  @override
  void initState() {
    // TODO: implement initState
    getsharepref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(5
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => firstpage()));
              },
              icon: Icon(Icons.arrow_forward))
        ],
        backgroundColor: Color(0xff6930c3),
        title: Center(
            child: Text(
          'profile',
          style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 20)),
        )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "User name : $user_name",
              style: TextStyle(fontSize: 30),
            ),
            Text("Password : $pass", style: TextStyle(fontSize: 30)),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 18, color: Color(0xFF000000)),
                )),
          ],
        ),
      ),
    );
  }
}
