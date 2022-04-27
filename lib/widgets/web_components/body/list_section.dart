
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/section_model.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';
import 'package:flutter_web_page_one/widgets/web_components/body/menu_section.dart';
import 'package:flutter_web_page_one/widgets/web_components/body/product_section.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SectionListView extends StatelessWidget {
  
  AutoScrollController autoScrollController;
  SectionListView(this.autoScrollController);
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp= ResponsiveApp(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        sections.length+1, (index) {
          return (index == 0)
            ? Padding(
              padding: responsiveApp.edgeInsetsApp.allExLargeEdgeInsets,
              child: addScroll(MenuSection(autoScrollController), 0),
            )
            : Padding(
              padding: responsiveApp.edgeInsetsApp.allExLargeEdgeInsets,
              child: addScroll(ProductSection(sections[index -1]), index)
            );
        }
      )      
    );
  }

  addScroll(Widget child, index) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: autoScrollController,
      index: index,
      child: child,
    );
  }
}