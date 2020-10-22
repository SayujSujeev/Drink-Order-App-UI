import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:drink_order_app_ui/constants/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final String drinkImageUrl;

  Background(this.drinkImageUrl);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: size.height * 0.55,
          width: size.width,
          image: AssetImage(widget.drinkImageUrl),
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: appPadding, left: appPadding * 1.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Order',
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Icon(
                            CustomIcons.cocktails,
                            color: white.withOpacity(0.4),
                            size: 30,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: size.height * 0.025,
                              width: size.width * 0.05,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: grey_dark.withOpacity(0.8)),
                              child: Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Total Drinks',
                        style: TextStyle(
                            color: white.withOpacity(0.4), fontSize: 10.0),
                      )
                    ],
                  ),
                  SizedBox(
                    width: size.height * 0.1,
                  ),
                  Column(
                    children: [
                      Text(
                        '\$32',
                        style: TextStyle(color: white,fontSize: 24,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Total Price',
                        style: TextStyle(
                            color: white.withOpacity(0.4), fontSize: 10.0),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
