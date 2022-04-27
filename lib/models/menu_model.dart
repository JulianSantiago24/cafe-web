
import 'package:flutter_web_page_one/values/string_app.dart';

class Menu {
  final String title, image;
  //final String image;

  Menu({this.title, this.image});
}

List<Menu> menu = [

  Menu(
    title: coffeesStr,
    image: "assets/images/menu1.png"
  ),
  Menu(
    title: drinkStr,
    image: "assets/images/menu2.png"
  ),
  Menu(
    title: cakeStr,
    image: "assets/images/menu3.png"
  ),
  Menu(
    title: sandwichesStr,
    image: "assets/images/menu4.png"
  ),

];