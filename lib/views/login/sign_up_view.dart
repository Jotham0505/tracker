import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/primaryButton.dart';
import 'package:tracker/common_widget/rounded_text_field.dart';
import 'package:tracker/common_widget/secondaryButton.dart';
import 'package:tracker/views/login/sign_in_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray80,
      body: SafeArea(
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
              RoundedTextField(
                text: 'E-mail Address',
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 17,
              ),
              RoundedTextField(
                text: 'Password',
                controller: txtPass,
                obsText: true,
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 5,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        //borderRadius: BorderRadius.circular(radius)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        //borderRadius: BorderRadius.circular(radius)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        //borderRadius: BorderRadius.circular(radius)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 5,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      decoration: BoxDecoration(
                        color: TColor.gray70,
                        //borderRadius: BorderRadius.circular(radius)
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Use 8 or more characters with a mis of letter's, \nnumbers & symbols",
                    style: TextStyle(
                      color: TColor.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              PrimaryButton(
                onPressed: () {
                  /*Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SocialLoginView(),
                        ),
                      );*/
                },
                title: "Get Started, it's free!",
              ),
              Spacer(),
              Text(
                "Do you already have an account?",
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Secondarybutton(
                  title: "Sign in",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInView(),
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
