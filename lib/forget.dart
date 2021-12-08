import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled4/main.dart';

class Forgot extends StatefulWidget {
  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();

  String username = '';


  @override
  void initState() {
    // TODO: implement initState
    getsherpref();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/2599319.jpg"), fit: BoxFit.fill),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Forget \n"
                      "      password",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightGreenAccent, width: 2.5),
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Enter Your Email or Number',
                        hintText: 'Enter Your Email or Number',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightGreenAccent, width: 2.5),
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Enter Your Password',
                        hintText: 'Enter Your Password',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: repassController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightGreenAccent, width: 2.5),
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Enter Your re Type Password',
                        hintText: 'Enter Your re Type Password',
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      if (username == usernameController.text) {
                        if (passController.text == repassController.text) {
                          setShapref();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => login(),
                            ),
                          );
                        } else {
                          Fluttertoast.showToast(
                              msg: 'Please give a valid ID and Pass',
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.SNACKBAR,
                              backgroundColor: Colors.amberAccent,
                              textColor: Colors.pink);
                        }
                      } else {
                        Fluttertoast.showToast(
                            msg: 'Please give a valid ID and name',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.SNACKBAR,
                            backgroundColor: Colors.amberAccent,
                            textColor: Colors.pink);
                      }
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 45,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getsherpref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      username = pref.getString('user_name') ?? '';
    });
  }

  setShapref() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString('user_name', usernameController.text);
    pref.setString('pass', passController.text);
  }
}
