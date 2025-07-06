import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/customArc.dart';
import 'package:tracker/common_widget/segmentButton.dart';
import 'package:tracker/common_widget/statusButton.dart';
import 'package:tracker/common_widget/subscriptionHomeRow.dart';
import 'package:tracker/common_widget/upcomingBillHomeRow.dart';

class SpendingBudgetView extends StatefulWidget {
  const SpendingBudgetView({super.key});

  @override
  State<SpendingBudgetView> createState() => _SpendingBudgetViewState();
}

class _SpendingBudgetViewState extends State<SpendingBudgetView> {
  bool isSubscription = true;
  List subArr = [
    {"name": "Spotify", "icon": "assets/img/spotify_logo.png", "price": "5.99"},
    {
      "name": "YouTube Premium",
      "icon": "assets/img/youtube_logo.png",
      "price": "18.99"
    },
    {
      "name": "Microsoft OneDrive",
      "icon": "assets/img/onedrive_logo.png",
      "price": "29.99"
    },
    {
      "name": "NetFlix",
      "icon": "assets/img/netflix_logo.png",
      "price": "15.00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: media.width * 1.1,
              decoration: BoxDecoration(
                color: TColor.gray70.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: media.width * 0.07),
                    width: media.width * 0.70,
                    height: media.width * 0.70,
                    child: CustomPaint(
                      painter: CustomArcPainter(
                        end: 220,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                      Text(
                        "\$1,235",
                        style: TextStyle(
                            color: TColor.white,
                            //fontFamily: "Inter",
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Text(
                        "This month bills",
                        style: TextStyle(
                            color: TColor.gray40,
                            //fontFamily: "Inter",
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              // decorations box
                              color: TColor.gray60.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color: TColor.border.withOpacity(0.15))),
                          child: Text(
                            "See your budget",
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: Statusbutton(
                                title: 'Active subs',
                                onPressed: () {},
                                statuscolor: TColor.secondary,
                                value: '12',
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Statusbutton(
                                title: 'Highest subs',
                                onPressed: () {},
                                statuscolor: TColor.primary10,
                                value: '\$19.99',
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Statusbutton(
                                title: 'Lowest subs',
                                onPressed: () {},
                                statuscolor: TColor.secondaryG,
                                value: '\$5.99',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map ?? {};

                  return SubscriptionHomeRow(
                    sObj: sObj,
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
