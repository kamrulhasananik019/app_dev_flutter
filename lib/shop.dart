
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'package:untitled4/productlistmod.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final imagelist = [
    'https://5.imimg.com/data5/SELLER/Default/2020/12/ZO/JL/HL/23039853/lp-chillx3-01-500x500.png',
    'https://sc04.alicdn.com/kf/H07f9d99bf01b43edb83047162f2442e2r.jpg',
    'https://www.primeabgb.com/wp-content/uploads/2020/09/Gigabyte-GeForce-RTX-3090-EAGLE-OC-24G-24GB-Graphic-Card-GV-N3090EAGLE-OC-24GD.jpg',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  final List<productListModel> productlist = [
    productListModel(
        1, "Product 1", 'Product 1 desc', 5, 2, 20, 100, 5, "https://media.istockphoto.com/photos/computer-gaming-powerful-graphic-card-closeup-picture-id1067068448?b=1&k=20&m=1067068448&s=170667a&w=0&h=YJOe7Po3gMK5gzplPm3gf8dFB4QEqyg3d1oyW0Mo2Mw="),
    productListModel(
        2, "Product 2", 'Product 2 desc', 5, 2, 20, 100, 5, "https://media.istockphoto.com/photos/man-opens-the-package-with-the-rog-strix-geforce-gtx-1660-ti-advanced-picture-id1189981207?b=1&k=20&m=1189981207&s=170667a&w=0&h=JJjGe3FNK-xu4TccfQ2S5ag3I0QgVXKP5dyVmrtYeXo="),
    productListModel(
        3, "Product 3", 'Product 3 desc', 5, 2, 20, 100, 5, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS72da28musvpbhpE1Xu05HWqGOsTQpbwaSRQ&usqp=CAU"),
    productListModel(
        4, "Product 4", 'Product 4 desc', 5, 2, 20, 100, 5, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUI9NG7WNRvMz_D0qYbpVsEMZ_S1FxTAPaaw&usqp=CAU"),
    productListModel(
        5, "Product 5", 'Product 5 desc', 5, 2, 20, 100, 5, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStEkL1pb-Ah95uNHDIgLYNrjC_IraYue9DGw&usqp=CAU"),
    productListModel(
        6, "Product 6", 'Product 6 desc', 5, 2, 20, 100, 5, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2IBTbh-GX2TeiMFHhFujXSB1ybHrBJ-sOGg&usqp=CAU"),
    productListModel(
        7, "Product 7", 'Product 7 desc', 5, 2, 20, 100, 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2GnIjtAOe8xI7QMWzv00OLINaA9OiQavIPA&usqp=CAU'),
    productListModel(
        7, "Product 7", 'Product 7 desc', 5, 2, 20, 100, 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVzGd1bQL7IYsDHji18XDIiYrE4FWDblyurw&usqp=CAU'),
    productListModel(
        7, "Product 7", 'Product 7 desc', 5, 2, 20, 100, 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlWRGigsnIJmtWughzvZCT6aej5nNA0sxjSg&usqp=CAU'),
    productListModel(
        7, "Product 7", 'Product 7 desc', 5, 2, 20, 100, 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE9S6JQBmTGps_qpWBDS68xjKPr-ejCWxMcw&usqp=CAU'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,

            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                      itemCount: productlist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 10,
                        childAspectRatio: .80
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return InkWell(
                          onTap: (){
                            
                          },
                          child: Card(
                            elevation: 20,
                            child: Column(
                              children: [
                                Container(
                                  child: Image.network(productlist[index].imageUrl),
                                ),
                                Text(productlist[index].titel)
                              ],
                            ),


                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}