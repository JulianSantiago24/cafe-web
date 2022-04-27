import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/products_model.dart';
import 'package:flutter_web_page_one/values/string_app.dart';

class Section{

  String title;
  String subtitle;
  Color color;
  List list;

  Section({this.title, this.subtitle, this.color, this.list});

}

List<Section> sections=[
  Section(
    title: coffeesStr,
    subtitle: "Cafe 100% puro",
    color: Colors.yellow,
    list: coffeesList
  ),
  Section(
    title: drinkStr,
    subtitle: "Bebidas de todos los sabores",
    color: Colors.red,
    list: drinksList
  ),
  Section(
    title: cakeStr,
    subtitle: "Pasteles deliciosos",
    color: Colors.blue,
    list: cakesList
  ),
  Section(
    title: sandwichesStr,
    subtitle: "Come algo ligero",
    color: Colors.green,
    list: sandwichesList
  )
];