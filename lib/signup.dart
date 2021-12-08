import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled4/firstpage.dart';
import 'package:untitled4/main.dart';
import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatefulWidget {


  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  int radioValue =0;

  TextEditingController usernameController =TextEditingController();
  TextEditingController passController =TextEditingController();

  DateTime? _dateTime;
  getdate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year-100),
        lastDate: DateTime(DateTime.now().year+2));

    setState(() {
      _dateTime = date;
    });
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
        child:
        SingleChildScrollView(
          child: Column(
            children: [SizedBox(
              height: 60,
            ),
              Row(
                children: [

                  Container(
                    width:  MediaQuery.of(context).size.width/2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "First Name",
                          hintText: "enter your First Name",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Last Name",
                          hintText: "enter your Last Name",
                        ),
                      ),
                    ),
                  ),
                ],
              ),

               SizedBox(
                 height: 10,
               ),

              Container(
                width: MediaQuery.of(context).size.width/2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField( controller: passController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "enter your Password",
                    ),
                  ),
                ),
              ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   IconButton(onPressed: (){getdate();},
                       icon: Icon(Icons.date_range_outlined)),
                   Container(

                     height: 50,
                        width: MediaQuery.of(context).size.width/1.2,
                     decoration: BoxDecoration(
                         border: Border.all(width: 1, color: Colors.black)),
                     child: _dateTime==null?
                     Flexible(child: TextField(
                       keyboardType: TextInputType.datetime,
                     )
                     ): Center(child: Text("Date : ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}")),
                   ),

                 ],
               ),


Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Row(
      children: [
        Radio(value: 1, groupValue: radioValue,
            onChanged: (value){
              setState(() {
                radioValue = value as int;
              });
            }),
        Text(' Male')
      ],
    ),



    Row(
      children: [
        Radio(value: 2, groupValue: radioValue,
            onChanged: (value){
              setState(() {
                radioValue = value as int;
              });
            }),
        Text('Female')
      ],
    ),],
),



        Container(
          height: 100,
          child: TextButton(
            onPressed: () {
              setShapref();
              Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()));
             // Fluttertoast.showToast(msg: radioValue .toString(),toastLength: Toast.LENGTH_LONG);
            },
            child: Text("Submet",
              style: TextStyle(color: Colors.lightBlue,fontSize: 25),),
          ),



)
            ],
          ),
        ),
      ),
        ],
      ),

    );
  }

  getDate()async{

  }

  setShapref()async{
    final pref = await SharedPreferences.getInstance();
    pref.setString('user_name', usernameController.text);
    pref.setString('pass', passController.text);

  }

}

