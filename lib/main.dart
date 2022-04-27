
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/pages/home_page.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ResponsiveApp responsiveApp;
  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      title: 'Web Page',
      debugShowCheckedModeBanner: false,
      builder: (context,child){
        responsiveApp = ResponsiveApp(context);
        return Theme(
          data: ThemeData(
            backgroundColor: Colors.blueGrey[900],
            primaryColor: Colors.black,
            accentColor: Colors.blueGrey,
            iconTheme: IconThemeData(color: Colors.white),
            cardColor: Colors.white,
            primaryTextTheme: getTextTheme(),
            textTheme: getTextTheme(),
            indicatorColor: Colors.white,
            unselectedWidgetColor: Colors.blueGrey[300],
            tabBarTheme: TabBarTheme(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.blueGrey[300]
            ),
            accentTextTheme: TextTheme(          
              bodyText1: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: responsiveApp.bodyText1
              ),
              bodyText2: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: responsiveApp.bodyText1
              ),
              headline6: TextStyle(
                color: Colors.blueGrey[300],
                fontSize: responsiveApp.headline6
              ),
            )
          ),
          child: HomePage()
        );
      },
    );
  }

  getTextTheme() {
    return TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: responsiveApp.bodyText1        
      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.bodyText1
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headline2
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headline3
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontSize: responsiveApp.headline6
      )  
    );
  }
}