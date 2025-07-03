import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';

class segment_button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isActive;
  const segment_button({
    super.key,
    required this.title,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: isActive
              ? BoxDecoration(
                  // decorations box
                  color: TColor.gray60.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: TColor.border.withOpacity(0.15)))
              : null,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? TColor.white : TColor.gray30,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
