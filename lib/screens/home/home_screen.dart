import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/screens/home/components/categories.dart';
import 'package:drink_order_app_ui/screens/home/components/custom_app_bar.dart';
import 'package:drink_order_app_ui/screens/home/components/custom_botoom_navigation_bar.dart';
import 'package:drink_order_app_ui/screens/home/components/drink_products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey_dark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBar(),
          Categories(),
          DrinkProducts(),
          CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}
