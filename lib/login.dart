import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled4/forget.dart';
import 'firstpage.dart';
import 'homepage/profile_main.dart';
import 'signup.dart';
class homepage extends StatefulWidget {


  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  String a = "abc";
  String b ="1234";
  TextEditingController username = TextEditingController();
  TextEditingController password_a = TextEditingController();

  String user_name= '';

  String pass = '';

  @override
  void initState() {
    // TODO: implement initState
    getsherpref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:

      Stack(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/2599319.jpg"),
                fit: BoxFit.fill
            ),
            ),
          ),


      SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              /*Container(
                height: 300,
              child: FlareActor(

                "assets/ani1.flr",animation: "success",
                fit: BoxFit.cover,

              ),
              ),*/
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: "user name",
                    hintText: "enter your name",



                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password_a,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "password",
                    hintText: "enter your password",



                  ),

                ),
              ),

              Container(
                alignment: Alignment.topRight,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Forgot(),
                      ),
                    );
                  },
                  child: Text("Forget password ?",
                    style: TextStyle(color: Colors.lightGreenAccent),),
                ),
              ),
              Container(
                height: 67,
                width: 150,
                  decoration: BoxDecoration( color: Colors.red,
                  borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.centerRight,
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){


                  if (username.text==user_name && password_a.text==pass){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>firstpage()));
                  }
                  else {
                    Fluttertoast.showToast(
                        msg: 'Please give a valid ID and Pass',
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: Colors.amberAccent,
                        textColor: Colors.pink);
                  }


                },
                    child:
                    Center(child:
                    Text("Login",
                      style: TextStyle(fontSize: 30,color: Colors.white70),)) ),
              )
              ),

              Container(
                height: 100,
                child: TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup(),
                      ),
                    );
                  },
                  child: Text("Have an account? Sign Up",
                    style: TextStyle(color: Colors.lightGreenAccent,fontSize: 25),),
                ),
              ),

              Container(
                height: 100,
                child: TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ),
                    );
                  },
                  child: Text("Have an account? Sign Up",
                    style: TextStyle(color: Colors.lightGreenAccent,fontSize: 25),),
                ),
              ),
            ],
          ),
        ),
      ),

        ],
      ),
    );
  }

  getsherpref() async{
    final pref = await SharedPreferences.getInstance();

    setState((){
      user_name = pref.getString('user_name')?? '';
      pass = pref.getString('pass')?? '';

    });

  }
}
