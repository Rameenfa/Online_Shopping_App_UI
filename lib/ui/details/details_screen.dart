import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/online_shop_app.dart';

class DetailsScreen extends StatefulWidget {
  final Product? product;
  const DetailsScreen({super.key, this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.product?.color,
      appBar: AppBar(
        backgroundColor: widget.product?.color,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/back.svg',
          color: Colors.white,
          ), 
          ),
          actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            ),
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: DetailsBody(product: widget.product,),
    );
  }
}