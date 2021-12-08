import 'package:flutter/material.dart';

class custom_header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 200,
        height: 600,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Test123'),
                accountEmail: Text('test@123.com'),
                currentAccountPicture: Image.network(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a89c3e38-b6f3-48a0-9f9e-df9a0129fb93/daghh5x-4a77b3ec-fd4f-4d17-9f84-5963a8cb5c03.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4OWMzZTM4LWI2ZjMtNDhhMC05ZjllLWRmOWEwMTI5ZmI5M1wvZGFnaGg1eC00YTc3YjNlYy1mZDRmLTRkMTctOWY4NC01OTYzYThjYjVjMDMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.dWTFMrwnbAbj5TtUp9U_vQsohW7MnkRPymzR5wZQoV8'),
              ),
              ListTile(
                onTap: (){},
                title: Text("Home"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward ),
              ),Divider(
                thickness: 0.3,
                color: Colors.black,
              ),
              ListTile(
                onTap: (){},
                title: Text("profile"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward ),
              ),Divider(
                thickness: 0.3,
                color: Colors.black,
              ),
              ListTile(
                onTap: (){},
                title: Text("Home"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward ),
              ),Divider(
                thickness: 0.3,
                color: Colors.black,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
