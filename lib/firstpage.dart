import 'package:flutter/material.dart';
import 'package:untitled4/sec.dart';

class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
      Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.white70,
              child: Column(
                children: [
                  Container(
                    height: 95,
                    width: double.infinity,
                    child: Icon(
                      Icons.account_circle,
                      size: 60,
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    child: Text(
                      'ANIK',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                size: 35,
              ),
              title: Text(
                'Messages',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.sixty_fps_select_outlined,
                size: 35,
              ),
              title: Text(
                'Shop',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 35,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),


      appBar: AppBar(backgroundColor: Colors.green,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("My ECO"),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.three_p_outlined),
        )],
      ),
      
      
   body:SingleChildScrollView(
     child: Column(
       children: [


         Container(

           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
               decoration: InputDecoration( enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.green,width: 2.5,),

                     borderRadius: BorderRadius.circular(30)
                 ),


                 focusedBorder: OutlineInputBorder(
                     borderSide:BorderSide(
                         color: Colors.lightGreenAccent,width: 2.5
                     ),borderRadius: BorderRadius.circular(30)
                 ),


                 labelText: 'Search Your item',
                 hintText: 'Search Your item',

               ),
             ),
           ),
         ),


         Container(
           child: Align(
             alignment: Alignment.bottomRight,
             child:  TextButton(
               onPressed: () {
                 print("button press done");
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => lists(),
                   ),
                 );
               },
               child:    Icon(Icons.arrow_forward_sharp,size: 30,) ,
             ),

           ),
         ),

       ],
     ),
   ) ,
    );
  }
}
