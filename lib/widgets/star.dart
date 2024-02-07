import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key, this.size = 20});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: size,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: size,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: size,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: size,
        ),
        Icon(
          Icons.star,
          color: Colors.grey,
          size: size,
        ),
      ],
    );
  }
}
