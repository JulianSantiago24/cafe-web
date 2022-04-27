
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/products_model.dart';
import 'package:flutter_web_page_one/widgets/general_components/products_container.dart';
import 'package:flutter_web_page_one/widgets/web_components/body/product_section.dart';

class ProductListView extends StatelessWidget {
  List<Products> list;
  ProductListView(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (context, index){
        return ProductsContainer(list[index], (){});
      }
    );
  }
}