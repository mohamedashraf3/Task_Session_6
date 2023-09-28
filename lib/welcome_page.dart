import 'package:facebook_interface/login_page.dart';
import 'package:facebook_interface/signup__page.dart';
import 'package:facebook_interface/view/footer.dart';
import 'package:facebook_interface/view/header.dart';
import 'package:facebook_interface/view/social_buttons.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFE),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 75),
            child: Column(
              children: [
                const Header(
                  title: 'Welcome',
                  description:
                      '  Please login or sign up to continue using our app',
                ),
                Image.asset(
                  "assets/cover.png",
                  fit: BoxFit.cover,
                  height: 290,
                  width: double.maxFinite,
                ),
                const SocialButtons(),
                Footer(
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignUp();
                    }));
                  },
                  buttontext: 'Sign Up',
                  footertxt: "Already have an account?",
                  action_head: 'Login',
                  page: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Login();
                    }));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
