
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/menu_model.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';

class MenuCard extends StatefulWidget {
  MenuCard({Key key, this.index, this.onPress}) : super(key: key);

  final int index;
  final onPress;

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Padding(
      padding: responsiveApp.edgeInsetsApp.hrzSmallEdgeInsets,
      child: InkWell(
        onTap: ()=> widget.onPress(),
        child: Container(
          width: responsiveApp.menuContainerWidth,
          height: responsiveApp.menuContainerHeight,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(Radius.circular(responsiveApp.menuRadiusWidth))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                menu[widget.index].image,
                width: responsiveApp.menuImageWidth,
                height: responsiveApp.menuImageHeight,
                fit: BoxFit.fill
              ),
              Text(
                menu[widget.index].title,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}