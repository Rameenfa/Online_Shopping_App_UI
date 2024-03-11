import 'package:flutter/material.dart';
import 'package:online_shop_app/online_shop_app.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;

  const DetailsBody({super.key, this.product});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.36),
                padding: EdgeInsets.only(
                  top: size.height * 0.13,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin
                ),
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24),
                  topRight: Radius.circular(24)
                  )
                ),
                child: Column(
                children: [
                  ColorAndSize(product: product),
                  Description(product: product),
                  const CounterWithFavButton(),
                  AddToCart(product: product)
                ],
              ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
          ),
        ],
      ),
    );
  }
}