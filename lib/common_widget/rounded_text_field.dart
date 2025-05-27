import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';

class RoundedTextField extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obsText;
  const RoundedTextField({
    super.key,
    required this.text,
    this.controller,
    this.keyboardType,
    this.obsText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: TColor.white,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 48,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: TColor.gray60.withOpacity(0.05),
            border: Border.all(
              color: TColor.gray70,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            keyboardType: keyboardType,
            obscureText: obsText,
          ),
        )
      ],
    );
  }
}
