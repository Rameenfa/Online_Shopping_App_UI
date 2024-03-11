import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/online_shop_app.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(6),
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
