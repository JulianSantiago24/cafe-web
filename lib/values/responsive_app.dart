
import 'package:flutter/cupertino.dart';
import 'package:flutter_web_page_one/util/size_info.dart';
import 'package:flutter_web_page_one/values/edgeInsets_app.dart';

class ResponsiveApp {
  BuildContext _context;
  MediaQueryData _mediaQueryData;
  double _textScaleFactor;
  double _scaleFactor;
  EdgeInsetsApp edgeInsetsApp;
  ResponsiveApp(this._context){
    _mediaQueryData = MediaQuery.of(_context);
    _textScaleFactor = _mediaQueryData.textScaleFactor;
    _scaleFactor = isMobile(_context) 
                    ? 1 
                    : isTablet(_context)
                        ? 1.1
                        : 1.3;
    edgeInsetsApp = EdgeInsetsApp(this);                    
  }

  //Container
  get menuContainerHeight=>setHeight(140);
  get menuContainerWidth=>setWidth(125);
  get productContainerWidth=>setWidth(60);
  get carouseContainerWidth=>setWidth(300);
  get carouseContainerHeight=>setHeight(60);
  get carouseCircleContainerWidth=>setWidth(10);
  get carouseCircleContainerHeight=>setHeight(10);
  get menuTabContainerHeight=>setHeight(400);
  get sectionHeight=>setHeight(50);
  get sectionWidth=>setWidth(8);

  //Radius
  get menuRadiusWidth=>setWidth(30);
  get carouseRadiusWidth=>setWidth(15);

  //Images
  get menuImageHeight=>setHeight(100);
  get menuImageWidth=>setWidth(110);
  get tabImageHeight=>setHeight(30);

  get menuHeight=>setHeight(850);
  get opacityHeight=>setHeight(252);
  get drawerWidth=>setWidth(252);

  //Divider and Line
  get dividerVtlHeight=>setHeight(100);
  get dividerVtlWidth=>setWidth(2);
  get dividerHznHeight=>setHeight(1);
  get lineHznButtonHeight=>setHeight(2);
  get lineHznButtonWidth=>setWidth(20);

  //Spaces
  get barSpace1Width=>setWidth(60);
  get barSpace2Width=>setWidth(80);

  //Text Size
  get bodyText1=>setSp(12);
  get headline6=>setSp(15);
  get headline3=>setSp(30);
  get headline2=>setSp(40);

  //Space between letter
  get letterSpacingHeaderWidth=>setWidth(1);

  setWidth(int width) => width * _scaleWidth;
  setHeight(int height) => height * _scaleHeight;
  setSp(int fontSize) => setWidth(fontSize) * _textScaleFactor;

  get _scaleWidth  => (width * _scaleFactor)/ width;
  get _scaleHeight => (height * _scaleFactor)/ height;
  get width => _mediaQueryData.size.width;
  get height => _mediaQueryData.size.height;

}