import 'package:flutter/material.dart';
import 'package:online_shop_app1/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        biuldOutlinedButton(
            icon: Icons.remove,
            press: () {
              if (numOfItem > 1) {
                setState(() {
                  numOfItem--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        biuldOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem++;
              });
            }),
      ],
    );
  }

  SizedBox biuldOutlinedButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
        child: OutlinedButton(
      onPressed: press,
      child: Icon(icon),
    
    ));
  }
}
