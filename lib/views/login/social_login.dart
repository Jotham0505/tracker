import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import 'package:tracker/common_widget/primaryButton.dart';
import 'package:tracker/common_widget/secondaryButton.dart';

class SocialLoginView extends StatefulWidget {
  const SocialLoginView({super.key});

  @override
  State<SocialLoginView> createState() => _SocialLoginViewState();
}

class _SocialLoginViewState extends State<SocialLoginView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray80,
      body:SafeArea(
        child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   SizedBox(height: media.height*0.03,),
                    Image.asset(
                      "assets/img/app_logo.png",
                      width: media.width*0.5,
                      //height: media.height,
                      fit: BoxFit.contain,
                    ),
                    Spacer(),
                    //SizedBox(height: 25,),
                   
                    Text(
                      "or",
                      style: TextStyle(
                        color: TColor.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15,),
        
                    Secondarybutton(title: "Sign up with E-mail", onPressed: (){}),
        
                    SizedBox(height: 10,),
        
                     Text(
                      "By registering you agree to our Terms of Use. Learn how we collect, use and share your data",
                      style: TextStyle(
                        color: TColor.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),
      ),
    );
  }
}