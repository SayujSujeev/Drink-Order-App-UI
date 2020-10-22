import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/models/drink.dart';
import 'package:drink_order_app_ui/screens/detail/components/curve_clipper.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatefulWidget {
  final Drink drink;

  DrinkDetail(this.drink);

  @override
  _DrinkDetailState createState() => _DrinkDetailState();
}

class _DrinkDetailState extends State<DrinkDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.5,
        ),
        ClipPath(
          clipper: CurveClipper(),
          child: Container(
            height: size.height * 0.4,
            width: size.width,
            decoration: BoxDecoration(
                color: grey_dark,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.0),
                )),
            child: Padding(
              padding: const EdgeInsets.all(appPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.drink.name,
                    style: TextStyle(
                      color: white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Text(
                    widget.drink.category,
                    style: TextStyle(
                      color: white.withOpacity(0.4),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.15,
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: white.withOpacity(0.4),
                        ),
                        borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.drink.alcohol.toString() + '%',style: TextStyle(
                              color: white,
                              fontSize: 16,
                            ),),
                            Text( 'Alcohol',style: TextStyle(
                              color: white.withOpacity(0.4),
                              fontSize: 10,
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.05,),
                      Container(
                        width: size.width * 0.15,
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: white.withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.drink.fruit.toString() + '%',style: TextStyle(
                              color: white,
                              fontSize: 16,
                            ),),
                            Text( 'Fruit',style: TextStyle(
                              color: white.withOpacity(0.4),
                              fontSize: 10,
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.05,),
                      Container(
                        width: size.width * 0.15,
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: white.withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.drink.water.toString() + '%',style: TextStyle(
                              color: white,
                              fontSize: 16,
                            ),),
                            Text( 'Water',style: TextStyle(
                              color: white.withOpacity(0.4),
                              fontSize: 10,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.35,
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                          color: black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$' + widget.drink.price.toString(),style: TextStyle(
                              color: grey_light,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text('Price x Drink',style: TextStyle(
                              color: white.withOpacity(0.4),
                              fontSize: 12,
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.05,),
                      Container(
                        width: size.width * 0.35,
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                          color: black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$' + (widget.drink.price * 2).toString(),style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text('Price x Drink',style: TextStyle(
                              color: white.withOpacity(0.4),
                              fontSize: 12,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
