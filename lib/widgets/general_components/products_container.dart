
import 'package:flutter/material.dart';
import 'package:flutter_web_page_one/models/products_model.dart';
import 'package:flutter_web_page_one/values/responsive_app.dart';

class ProductsContainer extends StatelessWidget {

  Products products;
  var onPress;

  ProductsContainer(this.products, this.onPress);
  ResponsiveApp responsiveApp;

  @override
  Widget build(BuildContext context) {
    responsiveApp = ResponsiveApp(context);
    return InkWell(
      onTap: onPress,
      child: Container(
        height: responsiveApp.productContainerWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(products.title.toUpperCase()),
            Text(products.price)
          ],
        ),
      ),
    );
  }
}