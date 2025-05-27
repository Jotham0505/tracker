import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/primaryButton.dart';
import 'package:tracker/common_widget/rounded_text_field.dart';
import 'package:tracker/common_widget/secondaryButton.dart';
import 'package:tracker/views/login/sign_up_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  bool isRemeber = false;
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isRemeber
                            ? Icons.check_box_rounded
                            : Icons.check_box_outline_blank,
                        size: 15,
                        color: TColor.gray50,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: TColor.white,
                        fontSize: 14,
                      ),
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
                title: "Sign in",
              ),
              Spacer(),
              Text(
                "Don't have an account yet?",
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
                  title: "Sign up",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpView(),
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
