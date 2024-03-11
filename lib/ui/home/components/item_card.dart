import 'package:flutter/material.dart';
import 'package:online_shop_app/online_shop_app.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function? press;
  const ItemCard({
    Key? key, 
    this.product, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press!(),
      child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                // width: 150,
                // height: 160,
                decoration: BoxDecoration(
                  color: product?.color,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Center(
                  child: Hero(
                    tag: "${product?.id}",
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: Image.asset(product!.image,
                      height: 120,
                      fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
              child: Text(
                product!.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text('\$${product?.price}', style: TextStyle(fontWeight: FontWeight.bold),)
          ],
      ),
    );
  }
}