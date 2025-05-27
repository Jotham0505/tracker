import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/primaryButton.dart';
import 'package:tracker/common_widget/secondaryButton.dart';
import 'package:tracker/views/login/sign_in_view.dart';
import 'package:tracker/views/login/social_login.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/img/welcome_screen.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  Image.asset(
                    "assets/img/app_logo.png",
                    width: media.width * 0.5,
                    //height: media.height,
                    fit: BoxFit.contain,
                  ),
                  Spacer(),
                  Text(
                    "dsagijo asidgjo adiofweoij eiwo eiwoq eiir \neqroij iohqer dsfga duhf eu.",
                    style: TextStyle(
                      color: TColor.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SocialLoginView(),
                        ),
                      );
                    },
                    title: "Get Started",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Secondarybutton(
                    title: "I have an account",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInView(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
