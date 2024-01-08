import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      image: 'assets/images/bag_1.png',
      title: "Office Code",
      price: 234,
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
      size: 12,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      image: 'assets/images/bag_2.png',
      title: "Belt Bag",
      price: 234,
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
      size: 12,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      image: 'assets/images/bag_3.png',
      title: "Office Code",
      price: 234,
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
      size: 12,
      color: Color(0xFF989493)),
  Product(
      id: 4,
      image: 'assets/images/bag_4.png',
      title: "Office Code",
      price: 234,
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
      size: 12,
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      image: 'assets/images/bag_5.png',
      title: "Office Code",
      price: 234,
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
      size: 12,
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    image: 'assets/images/bag_6.png',
    title: "Office Code",
    price: 234,
    description:
        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
    size: 12,
    color: Color(0xFFAEAEAE),
  ),
];
