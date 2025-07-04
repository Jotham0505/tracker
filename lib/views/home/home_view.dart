import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/segmentButton.dart';
import 'package:tracker/common_widget/statusButton.dart';
import 'package:tracker/common_widget/subscriptionHomeRow.dart';
import 'package:tracker/common_widget/upcomingBillHomeRow.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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

  List bilArr = [
    {"name": "Spotify", "date": DateTime(2023, 07, 25), "price": "5.99"},
    {
      "name": "YouTube Premium",
      "date": DateTime(2023, 07, 25),
      "price": "18.99"
    },
    {
      "name": "Microsoft OneDrive",
      "date": DateTime(2023, 07, 25),
      "price": "29.99"
    },
    {"name": "NetFlix", "date": DateTime(2023, 07, 25), "price": "15.00"},
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
                  Image.asset("assets/img/home_bg.png"),
                  Column(
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
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: segment_button(
                      isActive: isSubscription,
                      title: "Your Subscription",
                      onPressed: () {
                        setState(() {
                          isSubscription = !isSubscription;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: segment_button(
                      isActive: !isSubscription,
                      title: "Upcoming bills",
                      onPressed: () {
                        setState(() {
                          isSubscription = !isSubscription;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            if (!isSubscription)
              ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: subArr.length,
                  itemBuilder: (context, index) {
                    var sObj = subArr[index] as Map ?? {};

                    return Upcomingbillhomerow(
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
