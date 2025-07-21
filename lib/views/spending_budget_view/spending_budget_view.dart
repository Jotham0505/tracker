import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/budgetsRow.dart';
import 'package:tracker/common_widget/customArc.dart';
import 'package:tracker/common_widget/segmentButton.dart';
import 'package:tracker/common_widget/statusButton.dart';

class SpendingBudgetView extends StatefulWidget {
  const SpendingBudgetView({super.key});

  @override
  State<SpendingBudgetView> createState() => _SpendingBudgetViewState();
}

class _SpendingBudgetViewState extends State<SpendingBudgetView> {
  List budgetArr = [
    {
      "name": "Auto & Transport",
      "icon": "assets/img/auto_&_transport.png",
      "spend_amount": "25.99",
      "total_budget": "400",
      "left_amount": "250.01",
      "color": TColor.secondaryG
    },
    {
      "name": "Entertainment",
      "icon": "assets/img/entertainment.png",
      "spend_amount": "50.99",
      "total_budget": "600",
      "left_amount": "300.01",
      "color": TColor.secondary50
    },
    {
      "name": "Security",
      "icon": "assets/img/security.png",
      "spend_amount": "5.99",
      "total_budget": "600",
      "left_amount": "250.01",
      "color": TColor.primary10
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray, // color upgraded comment
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border:
                          Border.all(color: TColor.border.withOpacity(0.01))),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your're budgets are on track 👍",
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: budgetArr.length,
              itemBuilder: (context, index) {
                var bObj = budgetArr[index] as Map ?? {};

                return Budgetsrow(
                  bObj: bObj,
                  onPressed: () {},
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 8), // spending view comment
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: DottedBorder(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border:
                            Border.all(color: TColor.border.withOpacity(0.01))),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add new category ",
                          style: TextStyle(
                            color: TColor.gray40,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset(
                          "assets/img/add.png",
                          width: 16,
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}
