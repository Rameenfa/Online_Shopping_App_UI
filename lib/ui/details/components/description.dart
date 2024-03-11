import 'package:flutter/material.dart';
import 'package:online_shop_app/online_shop_app.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        '${product?.description}',
        style: TextStyle(height: 1.5),
        ),
    );
  }
}