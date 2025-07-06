import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/views/home/home_view.dart';
import 'package:tracker/views/spending_budget_view/spending_budget_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTabView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.gray,
      body: Stack(
        children: [
          PageStorage(bucket: pageStorageBucket, child: currentTabView),
          SafeArea(
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/img/bottom_bar_bg.png"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 0;
                                    currentTabView = HomeView();
                                  });
                                },
                                icon: Image.asset(
                                  "assets/img/home.png",
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 0
                                      ? TColor.white
                                      : TColor.gray,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 1;
                                    currentTabView = SpendingBudgetView();
                                  });
                                },
                                icon: Image.asset(
                                  "assets/img/budgets.png",
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 1
                                      ? TColor.white
                                      : TColor.gray,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 2;
                                    currentTabView = Container();
                                  });
                                },
                                icon: Image.asset(
                                  "assets/img/calendar.png",
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 2
                                      ? TColor.white
                                      : TColor.gray,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    selectTab = 3;
                                    currentTabView = Container();
                                  });
                                },
                                icon: Image.asset(
                                  "assets/img/creditcards.png",
                                  width: 20,
                                  height: 20,
                                  color: selectTab == 3
                                      ? TColor.white
                                      : TColor.gray,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          // filler style commit
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                    color: TColor.secondary.withOpacity(0.25),
                                    blurRadius: 10,
                                    offset: Offset(0, 4))
                              ]),
                          child: Image.asset(
                            "assets/img/center_btn.png", // center button image asset
                            width: 55,
                            height: 55,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
