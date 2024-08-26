import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  UserNameCard({
    super.key,
    required this.imag,
    required this.name,
    this.onCardTap,
    this.height,
    this.width,
  });

  final String? imag;
  final String? name;
  final double? height;
  final double? width;
  final Function()? onCardTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: Column(
        children: [
          Image.asset(
            imag!,
            height: height,
            width: width,
          ),
          Text(
            name!,
            style: TextStyle(color: Colors.white, height: 2),
          ),
        ],
      ),
    );
  }
}
