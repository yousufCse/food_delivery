import 'package:flutter/material.dart';
import 'package:food_delivery/core/utils/dimentions.dart';

class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    required this.text,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
    this.color = const Color(0xFF332d2b),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: 'Roboto',
        fontSize: size == 0 ? Dimentions.font20 : size,
      ),
    );
  }
}
