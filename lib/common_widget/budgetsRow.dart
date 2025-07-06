import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';

class Budgetsrow extends StatelessWidget {
  final Map bObj;
  final VoidCallback onPressed;
  const Budgetsrow({
    super.key,
    required this.bObj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 64,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: TColor.border.withOpacity(0.15))),
          alignment: Alignment.center,
          child: Row(
            children: [
              Image.asset(
                bObj["icon"],
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bObj["name"],
                      style: TextStyle(
                        color: TColor.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$${bObj["left_amount"]}left to spend",
                      style: TextStyle(
                        color: TColor.gray30,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$${bObj["spend_amount"]}left to spend",
                    style: TextStyle(
                      color: TColor.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "of \$${bObj["total_budget"]}left to spend",
                    style: TextStyle(
                      color: TColor.gray30,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
