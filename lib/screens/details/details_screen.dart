import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app1/constants.dart';
import 'package:online_shop_app1/models/Product.dart';
import 'package:online_shop_app1/screens/details/companents/cbody.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: biuldAppBar(context),
      body: Cbody(product: product,),
    );
  }

  AppBar biuldAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg')),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg')),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
