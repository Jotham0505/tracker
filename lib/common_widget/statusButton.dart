import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';

class Statusbutton extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPressed;
  final Color statuscolor;
  const Statusbutton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.statuscolor,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 68,
              decoration: BoxDecoration(
                // decorations box
                color: TColor.gray60.withOpacity(0.2),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: TColor.border.withOpacity(0.15),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: TColor.gray40,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      color: TColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 1,
              decoration: BoxDecoration(
                color: statuscolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
