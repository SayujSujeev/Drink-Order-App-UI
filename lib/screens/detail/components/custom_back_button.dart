import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => {
        Navigator.pop(context),
      },
      child: Padding(
        padding: const EdgeInsets.only(left: appPadding,top: appPadding * 1.5),
        child: Container(
          height: size.height * 0.075,
          width: size.width * 0.15,
          decoration: BoxDecoration(
            color: grey_dark,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Icon(Icons.arrow_back_ios,color: white,size: 25.0,),
        ),
      ),
    );
  }
}
