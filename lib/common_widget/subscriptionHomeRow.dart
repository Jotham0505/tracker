import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';

class SubscriptionHomeRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressed;
  const SubscriptionHomeRow({
    super.key,
    required this.sObj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 64,
        decoration: BoxDecoration(
            // decorations box
            color: TColor.gray60.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: TColor.border.withOpacity(0.15))),
        alignment: Alignment.center,
        child: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Image.asset(
              sObj["icon"],
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                sObj["name"],
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "\$${sObj["price"]}",
              style: TextStyle(
                color: TColor.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
