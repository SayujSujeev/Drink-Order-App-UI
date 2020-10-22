import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/data/data.dart';
import 'package:drink_order_app_ui/models/drink.dart';
import 'package:drink_order_app_ui/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class DrinkProducts extends StatelessWidget {
  Widget _buildDrinkProducts(BuildContext context, int index) {
    Drink drink = drinks[index];
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailScreen(drink: drink),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: appPadding, right: appPadding, bottom: appPadding / 2),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image(
                width: size.width * 0.85,
                image: AssetImage(drink.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(appPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.15,
                    height: size.height * 0.075,
                    decoration: BoxDecoration(
                      color: grey_dark,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          drink.discount.toString() + '%',
                          style: TextStyle(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Discout',
                          style: TextStyle(
                            color: white.withOpacity(0.4),
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        drink.name,
                        style: TextStyle(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Text(
                        drink.category,
                        style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.55,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return _buildDrinkProducts(context, index);
          }),
    );
  }
}
