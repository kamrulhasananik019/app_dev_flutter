import 'package:flutter/material.dart';

class productListModel{


  var id;
  String titel;
  String desc;
  int price;
  int discount;
  int quantity;
  var unit;
  int rating;
  String imageUrl;

  productListModel(this.id, this.titel, this.desc, this.price, this.discount,
      this.quantity, this.unit, this.rating, this.imageUrl);
}