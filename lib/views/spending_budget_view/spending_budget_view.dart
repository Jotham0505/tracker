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
      "left_amount": "374.01",
      "color": TColor.secondaryG
    },
    {
      "name": "Entertainment",
      "icon": "assets/img/entertainment.png",
      "spend_amount": "50.99",
      "total_budget": "600",
      "left_amount": "549.01",
      "color": TColor.secondary50
    },
    {
      "name": "Security",
      "icon": "assets/img/security.png",
      "spend_amount": "5.99",
      "total_budget": "600",
      "left_amount": "594.01",
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
            ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 65),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: budgetArr.length,
                itemBuilder: (context, index) {
                  var bObj = budgetArr[index] as Map ?? {};

                  return Budgetsrow(
                    bObj: bObj,
                    onPressed: () {},
                  );
                }),
            SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}
