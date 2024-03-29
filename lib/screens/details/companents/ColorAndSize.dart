import 'package:flutter/material.dart';
import 'package:online_shop_app1/constants.dart';
import 'package:online_shop_app1/models/Product.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: const Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: const Color(0xFFF8C078)),
                  ColorDot(color: const Color(0xFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: kTextColor),
                  children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(
                            fontWeight: FontWeight.bold))
              ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
