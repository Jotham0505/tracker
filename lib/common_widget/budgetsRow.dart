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
    var proVal = (double.tryParse(bObj["left_amount"]) ?? 0) /
        (double.tryParse(bObj["total_budget"]) ?? 0);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: TColor.border.withOpacity(0.05),
            ),
            color: TColor.gray60.withOpacity(0.1),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      bObj["icon"],
                      width: 35,
                      height: 35,
                      color: TColor.gray40,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          bObj["name"],
                          style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "\$${bObj["left_amount"]} left to spend",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$${bObj["spend_amount"]}",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "of \$${bObj["total_budget"]}",
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
              SizedBox(
                height: 8,
              ),
              LinearProgressIndicator(
                backgroundColor: TColor.gray60,
                minHeight: 3,
                valueColor: AlwaysStoppedAnimation(bObj["color"]),
                value: proVal,
              )
            ],
          ),
        ),
      ),
    );
  }
}
