
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';
import 'package:flutter_web_page_one/values/string_app.dart';

class ShopDrawer extends StatefulWidget {
  const ShopDrawer({
    Key key,

  }): super(key: key);
  

  @override
  _ShopDrawerState createState() => _ShopDrawerState();
}

class _ShopDrawerState extends State<ShopDrawer> {
  ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {
    responsiveApp= ResponsiveApp(context);
    return Container(
      width: responsiveApp.drawerWidth,
      child: Drawer(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(nameStr, style: Theme.of(context).textTheme.headline6),
                accountEmail: Text(emailDefaultStr),
                decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.jpg'),),
              ),
              getItem(
                aboutUsStr,
                Icons.article_outlined,
                (){}
              ),
              getItem(
                addressStr,
                Icons.location_on_outlined,
                (){}
              ),
              getItem(
                loginStr,
                Icons.lock_outline,
                (){}
              ),
              Expanded(
                child: Padding(
                  padding: responsiveApp.edgeInsetsApp.allMediumEdgeInsets,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      copyRightStr,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  getItem(String title, IconData icon, onTap) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}