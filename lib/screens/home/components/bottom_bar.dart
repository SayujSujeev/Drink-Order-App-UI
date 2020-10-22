import 'package:drink_order_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final Function onPressed;
  final bool bottomIcons;
  final String text;
  final IconData icons;

  BottomBar({
    @required this.onPressed,
    @required this.bottomIcons,
    @required this.icons,
    @required this.text,
  });

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child:  widget.bottomIcons == true
        ? Container(
        decoration: BoxDecoration(
            color: grey_medium, borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.symmetric(
            horizontal: appPadding / 2, vertical: appPadding / 4),
        child: Row(
          children: [
            Icon(
              widget.icons,
              color: white,
              size: 25,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(widget.text,style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),)
          ],
        ),
      )
          : Icon(widget.icons,color: white.withOpacity(0.4),size: 25,)
    );
  }
}
