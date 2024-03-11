import 'package:flutter/material.dart';
import 'package:online_shop_app/online_shop_app.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Welcome',
            style: Theme.of(context)
                   .textTheme
                   .headlineLarge
                   ?.copyWith(fontWeight: FontWeight.bold)
          ),
          ),
          SizedBox(height: 10,),
          Categories(),
          SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPaddin,
                  mainAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.72,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => DetailsScreen(
                    product: products[index],
                  ),)
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
