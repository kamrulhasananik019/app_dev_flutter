import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/sec.dart';
import 'package:untitled4/shop.dart';


class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}
class _firstpageState extends State<firstpage> {
  /*
  GlobalKey<SliderMenuContainerState> _key =
  new GlobalKey<SliderMenuContainerState>(); */


  final List<String> itemsimg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtzNxg0TnJwB9B90ch9o8I15_Ov6Jnjy2F2Q&usqp=CAU",
    "https://5.imimg.com/data5/WR/QY/LT/SELLER-16254184/zotac-rtx2070-8gb-ddr6-graphic-card-500x500.jpg",
    "https://5.imimg.com/data5/SELLER/Default/2021/5/SC/BS/PG/127679307/zotac-gaming-geforce-rtx-3080-graphic-card-500x500.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTab2UEks7kVZQT2VP1wM7rJV1fWRWL-l0dN57wzvV7WCQAPF46yuEdUpdfVdcBzVEEq6o&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxwcZI6VFls9u0Ign0g4yjez0U9gt2GCsNMA&usqp=CAU",
  ];

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
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 5,

                      ),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightGreenAccent, width: 5),
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'Search Your item',
                ),
              ),
            ),
          ),
        ),


        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.three_p_outlined),
        ),

        ],
      ),

     body: SingleChildScrollView(
        child: Column(
          children: [


            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => lists(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    size: 30,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: CarouselSlider.builder(
                itemCount: itemsimg.length,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIdx) {
                  return Container(
                      child: Center(
                    child: Image.network(itemsimg[index], fit: BoxFit.cover),
                  ));
                },
              ),
            ),

            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    size: 30,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
