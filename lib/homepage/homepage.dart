import 'package:flutter/material.dart';
import 'package:untitled4/custom_widget/custom_header.dart';
import 'package:untitled4/custom_widget/navigation_bottom.dart';

class homepage_dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nais")),
      drawer: custom_header(),
      bottomNavigationBar: navigation_bar(),
    );
  }
}
