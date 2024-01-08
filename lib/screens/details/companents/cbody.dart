import 'package:flutter/material.dart';
import 'package:online_shop_app1/constants.dart';
import 'package:online_shop_app1/models/Product.dart';

import 'ColorAndSize.dart';
import 'CounterWithfavbtn.dart';
import 'addToCard.dart';
import 'product_tittle.dart';

class Cbody extends StatelessWidget {
  final Product product;
  const Cbody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorandSize(product: product),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          product.description,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      CounterWithFavBtn(),
                      addToCard(product: product),
                    ],
                  ),
                ),
                Product_title(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
