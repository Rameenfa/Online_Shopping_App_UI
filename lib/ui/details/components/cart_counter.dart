import 'package:flutter/material.dart';
import 'package:online_shop_app/online_shop_app.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildOutlineButton(
          icon: Icons.remove, 
          press: () {
            if(numOfItems > 1){
              setState(() {
              numOfItems--;
            });
            }
          },),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
           numOfItems.toString().padLeft(2, '0') ,
          style: Theme.of(context).textTheme.bodyLarge,),
        ),
        BuildOutlineButton(
          icon: Icons.add, 
          press: () {
            setState(() {
              numOfItems++;
            });
          },
          ),
      ],
    );
  }
}

class BuildOutlineButton extends StatelessWidget {

  final IconData icon;
  final Function press;
  const BuildOutlineButton({
    super.key, required this.icon, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),)
        ),
        onPressed: () => press(),
        child: Icon(icon),
      ),
    );
  }
}