import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';

class Secondarybutton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const Secondarybutton({
    super.key, required this.title, required this.onPressed, this.fontSize = 16, this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/secodry_btn.png"),
      
          ),
          borderRadius: BorderRadius.circular(30),
         
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: TColor.white,
            //fontFamily: "Inter",
            fontSize: fontSize,fontWeight: fontWeight
          ),
        ),
      ),
    );
  }
}