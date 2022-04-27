
import 'package:flutter/cupertino.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';

class EdgeInsetsApp {
  // Todo
  EdgeInsets allSmallEdgeInsets;
  EdgeInsets allMediumEdgeInsets;
  EdgeInsets allLargeEdgeInsets;
  EdgeInsets allExLargeEdgeInsets;
  // Vertical
  EdgeInsets vrtSmallEdgeInsets;
  EdgeInsets vrtMediumEdgeInsets;
  EdgeInsets vrtLargeEdgeInsets;
  EdgeInsets vrtExLargeEdgeInsets;
  // Horizontal
  EdgeInsets hrzSmallEdgeInsets;
  EdgeInsets hrzMediumEdgeInsets;
  EdgeInsets hrzLargeEdgeInsets;
  EdgeInsets hrzExLargeEdgeInsets;
  //Solo derecha, izquierda, arriba y abajo SMALL
  EdgeInsets onlySmallTopEdgeInsets;
  EdgeInsets onlySmallBottomEdgeInsets;
  EdgeInsets onlySmallRightEdgeInsets;
  EdgeInsets onlySmallLeftEdgeInsets;
  //Solo derecha, izquierda, arriba y abajo MEDIUM
  EdgeInsets onlyMediumTopEdgeInsets;
  EdgeInsets onlyMediumBottomEdgeInsets;
  EdgeInsets onlyMediumRightEdgeInsets;
  EdgeInsets onlyMediumLeftEdgeInsets;
  //Solo derecha, izquierda, arriba y abajo LARGE
  EdgeInsets onlyLargeTopEdgeInsets;
  EdgeInsets onlyLargeBottomEdgeInsets;
  EdgeInsets onlyLargeRightEdgeInsets;
  EdgeInsets onlyLargeLeftEdgeInsets;
  //Solo derecha, izquierda, arriba y abajo EXTRALARGE
  EdgeInsets onlyExLargeTopEdgeInsets;
  EdgeInsets onlyExLargeBottomEdgeInsets;
  EdgeInsets onlyExLargeRightEdgeInsets;
  EdgeInsets onlyExLargeLeftEdgeInsets;

  ResponsiveApp _responsiveApp;

  EdgeInsetsApp(this._responsiveApp){    

    //Padding
    double _smallHeightEdgeInsets = _responsiveApp.setHeight(5);
    double _smallWidthEdgeInsets = _responsiveApp.setWidth(5);

    double _mediumHeightEdgeInsets = _responsiveApp.setHeight(10);
    double _mediumWidthEdgeInsets = _responsiveApp.setWidth(10);

    double _largeHeightEdgeInsets = _responsiveApp.setHeight(20);
    double _largeWidthEdgeInsets = _responsiveApp.setWidth(20);

    double _largeExHeightEdgeInsets = _responsiveApp.setHeight(100);
    double _largeExWidthEdgeInsets = _responsiveApp.setWidth(100);
    
    //Todo
    allSmallEdgeInsets = EdgeInsets.symmetric(
      vertical: _smallHeightEdgeInsets,
      horizontal: _smallWidthEdgeInsets
    );
    allMediumEdgeInsets = EdgeInsets.symmetric(
      vertical: _mediumHeightEdgeInsets,
      horizontal: _mediumWidthEdgeInsets
    );
    allLargeEdgeInsets = EdgeInsets.symmetric(
      vertical: _largeHeightEdgeInsets,
      horizontal: _largeWidthEdgeInsets
    );
    allExLargeEdgeInsets = EdgeInsets.symmetric(
      vertical: _largeExHeightEdgeInsets,
      horizontal: _largeExWidthEdgeInsets
    );

    //Vertical
    vrtSmallEdgeInsets = EdgeInsets.symmetric(
      vertical: _smallHeightEdgeInsets,
    );
    vrtMediumEdgeInsets = EdgeInsets.symmetric(
      vertical: _mediumHeightEdgeInsets,
    );
    vrtLargeEdgeInsets = EdgeInsets.symmetric(
      vertical: _largeHeightEdgeInsets,
    );
    vrtExLargeEdgeInsets = EdgeInsets.symmetric(
      vertical: _largeExHeightEdgeInsets,
    );

    //Horizontal
    hrzSmallEdgeInsets = EdgeInsets.symmetric(
      horizontal: _smallHeightEdgeInsets,
    );
    hrzMediumEdgeInsets = EdgeInsets.symmetric(
      horizontal: _mediumHeightEdgeInsets,
    );
    hrzLargeEdgeInsets = EdgeInsets.symmetric(
      horizontal: _largeHeightEdgeInsets,
    );
    hrzExLargeEdgeInsets = EdgeInsets.symmetric(
      horizontal: _largeExHeightEdgeInsets,
    );

    //Solo derecha, izquierda, arriba y abajo SMALL
    onlySmallTopEdgeInsets = EdgeInsets.only(
      top: _smallHeightEdgeInsets,
    );
    onlySmallBottomEdgeInsets = EdgeInsets.only(
      bottom: _smallHeightEdgeInsets,
    );
    onlySmallRightEdgeInsets = EdgeInsets.only(
      right: _smallWidthEdgeInsets,
    );
    onlySmallLeftEdgeInsets = EdgeInsets.only(
      left: _smallWidthEdgeInsets,
    );

    //Solo derecha, izquierda, arriba y abajo MEDIUM
    onlyMediumTopEdgeInsets = EdgeInsets.only(
      top: _mediumHeightEdgeInsets,
    );
    onlyMediumBottomEdgeInsets = EdgeInsets.only(
      bottom: _mediumHeightEdgeInsets,
    );
    onlyMediumRightEdgeInsets = EdgeInsets.only(
      right: _mediumWidthEdgeInsets,
    );
    onlyMediumLeftEdgeInsets = EdgeInsets.only(
      left: _mediumWidthEdgeInsets,
    );


    //Solo derecha, izquierda, arriba y abajo LARGE
    onlyLargeTopEdgeInsets = EdgeInsets.only(
      top: _largeHeightEdgeInsets,
    );
    onlyLargeBottomEdgeInsets = EdgeInsets.only(
      bottom: _largeHeightEdgeInsets,
    );
    onlyLargeRightEdgeInsets = EdgeInsets.only(
      right: _largeWidthEdgeInsets,
    );
    onlyLargeLeftEdgeInsets = EdgeInsets.only(
      left: _largeWidthEdgeInsets,
    );

    //Solo derecha, izquierda, arriba y abajo EXTRA LARGE
    onlyExLargeTopEdgeInsets = EdgeInsets.only(
      top: _largeExHeightEdgeInsets,
    );
    onlyExLargeBottomEdgeInsets = EdgeInsets.only(
      bottom: _largeExHeightEdgeInsets,
    );
    onlyExLargeRightEdgeInsets = EdgeInsets.only(
      right: _largeExWidthEdgeInsets,
    );
    onlyExLargeLeftEdgeInsets = EdgeInsets.only(
      left: _largeExWidthEdgeInsets,
    );
  } 
}