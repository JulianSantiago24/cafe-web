
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/menu_model.dart';
import 'package:flutter_web_page_one/models/products_model.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';
import 'package:flutter_web_page_one/widgets/general_components/products_list.dart';

class MenuTap extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _MenuTapState();
}

class _MenuTapState extends State<MenuTap> with TickerProviderStateMixin {

  TabController _controller;
  ResponsiveApp responsiveApp;
  int _selectedIndex = 0;


  @override
  void initState() {
    _controller = TabController(length: menu.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    responsiveApp=ResponsiveApp(context);
    return Container(
      height: responsiveApp.menuTabContainerHeight,
      child: Padding(
        padding: responsiveApp.edgeInsetsApp.allLargeEdgeInsets,
        child: Column(
          children: [
            TabBar(
              controller: _controller,
              onTap: (index) {
                setState(() {
                  _selectedIndex=index;            
                });               
              },
              tabs: List.generate(
                menu.length, (index) => createTab(
                  index,
                  menu[index].title,
                  menu[index].image,
                  context
                )
              )
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  ProductListView(coffeesList),
                  ProductListView(drinksList),
                  ProductListView(cakesList),
                  ProductListView(sandwichesList),
                ]
              )
            )
          ],
        ),
      ),
    );
  }

  createTab(int index, String text, String image, BuildContext context) {
    return Tab(
      text: text,
      icon: Image.asset(
        image,
        color: _selectedIndex==index?Theme.of(context).iconTheme.color:Theme.of(context).iconTheme.opacity,
        fit: BoxFit.fill,
        height: responsiveApp.tabImageHeight,
      ),
    );
  }
}