import 'package:flutter/material.dart';
import 'package:online_shop_app/online_shop_app.dart';

void main() {
  runApp(HeroControllerScope.none(
      child: const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomeScreen()
    );
  }
}
