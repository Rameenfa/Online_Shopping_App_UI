import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/online_shop_app.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(color: product!.color),
              borderRadius: BorderRadius.circular(13)
            ),
            child: IconButton(
              onPressed: (){}, 
            icon: 
            SvgPicture.asset('assets/icons/add_to_cart.svg',
            color: product?.color,
            )
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 45,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(product?.color),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)))
                  ),
                child: Text('Buy Now'.toUpperCase(),
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
                onPressed: () {},
                ),
            ),
          )
        ],
      ),
    );
  }
}