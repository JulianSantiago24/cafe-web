
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/menu_model.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';
import 'package:flutter_web_page_one/values/string_app.dart';
import 'package:flutter_web_page_one/widgets/web_components/body/container/menu_card.dart';
import 'package:flutter_web_page_one/widgets/web_components/body/container/section_container.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class MenuSection extends StatelessWidget {

  AutoScrollController _scrollController;
  MenuSection(this._scrollController);
  ResponsiveApp responsiveApp;
  
  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return Column(
      children: [
        SectionContainer(
          title: sectionMenuTitleStr,
          subTitle: sectionMenuSubTitleStr,
        ),
        Padding(
          padding: responsiveApp.edgeInsetsApp.onlyExLargeTopEdgeInsets,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              menu.length, (index) => MenuCard(
                index: index,
                onPress: ()=>scrollIndex(index+1)
              )
            ),
          )
        )
      ],
    );
  }
     


  scrollIndex(index) {
    _scrollController.scrollToIndex(index);
  }
}