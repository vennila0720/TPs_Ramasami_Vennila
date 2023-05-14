import 'package:ecommerce_app/constants/routes.dart';
import 'package:ecommerce_app/screens/auth_ui/sign_up/sign_up.dart';
import 'package:ecommerce_app/widgets/primary_button/primary_button.dart';
import 'package:ecommerce_app/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(
                subtitle: "Welcome back to SavvyChic", title: "Sign In"),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter your e-mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              obscureText: isShowPassword,
              decoration: InputDecoration(
                hintText: "Enter your password",
                prefixIcon: const Icon(
                  Icons.password_outlined,
                ),
                suffixIcon: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            PrimaryButton(
              title: "Sign In",
              onPressed: () async {}
            ),
            const SizedBox(
              height: 28.0,
            ),
            const Center(
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  Routes.instance
                      .push(widget: const SignUp(), context: context);
                },
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 19.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
