import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/custom_widget/custom_header.dart';
import 'package:untitled4/custom_widget/navigation_bottom.dart';

class homepage_dashboard extends StatefulWidget {
  @override
  State<homepage_dashboard> createState() => _homepage_dashboardState();
}

class _homepage_dashboardState extends State<homepage_dashboard> {
  final List<String> itemsimg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHgoKWXe-vJZ1CBdlnDF-LaLmbVmCbZmdrQ&usqp=CAU",
    "http://4.bp.blogspot.com/-8dNjFZKYTuo/TeUCdMRy3lI/AAAAAAAABI0/wmTKQnnGUsk/s1600/Animated+flag+of+Bangladesh+flag+animation+gif.gif",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nais")),
      drawer: custom_header(),
      bottomNavigationBar: navigation_bar(),
      body: SafeArea(
        child: Column(
          children: [





          ],
        ),
      ),
    );
  }
}
