
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/section_model.dart';
import 'package:flutter_web_page_one/widgets/general_components/products_list.dart';
import 'package:flutter_web_page_one/widgets/web_components/body/container/section_container.dart';

class ProductSection extends StatelessWidget {
  
  Section section;
  ProductSection(this.section);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionContainer(
          title: section.title,          
          subTitle: section.subtitle,
          color: section.color,
        ),
        ProductListView(section.list)
      ],
    );
  }
}