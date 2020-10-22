import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class QuantityAndPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.425,
      left: size.width * 0.7,
      child: Column(
        children: [
          Container(
            width: size.width * 0.2,
            height: size.height * 0.15,
            decoration: BoxDecoration(
                color: grey_medium, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width * 0.07,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                    color: grey_dark,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: white,
                  ),
                ),
                Container(
                  width: size.width * 0.15,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                    color: grey_light,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.07,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                    color: grey_dark,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.remove,
                    color: white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.225,
          ),
          Container(
            width: size.width * 0.2,
            height: size.height * 0.15,
            decoration: BoxDecoration(
                color: grey_medium, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage('assets/images/mastercard.jpg'),
                    height: size.height * 0.04,
                    width: size.width * 0.125,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Master Card',
                  style: TextStyle(color: white.withOpacity(0.4),fontSize: 10),
                ),
                Text(
                  'Pay',
                  style: TextStyle(color: white,fontSize: 24,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
