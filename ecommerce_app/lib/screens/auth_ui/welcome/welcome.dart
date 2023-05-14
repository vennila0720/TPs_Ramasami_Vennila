import 'package:ecommerce_app/constants/asset_images.dart';
import 'package:ecommerce_app/constants/routes.dart';
import 'package:ecommerce_app/screens/auth_ui/login/login.dart';
import 'package:ecommerce_app/screens/auth_ui/sign_up/sign_up.dart';
import 'package:ecommerce_app/widgets/primary_button/primary_button.dart';
import 'package:ecommerce_app/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopTitles(
              subtitle:
                  "Experience the ultimate in shopping bliss with SavvyChic",
              title: "Welcome to SavvyChic"),
          Center(
            child: Image.asset(
              AssetsImages.instance.welcomeImage,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(
                  Icons.facebook,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Image.asset(
                  AssetsImages.instance.googleLogo,
                  scale: 30.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          PrimaryButton(
            title: "Sign In",
            onPressed: () {
              Routes.instance.push(widget: const Login(), context: context);
            },
          ),
          const SizedBox(
            height: 18.0,
          ),
          PrimaryButton(
            title: "Sign Up",
            onPressed: () {
              Routes.instance.push(widget: const SignUp(), context: context);
            },
          ),
        ],
      ),
    ));
  }
}
