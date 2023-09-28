import 'package:facebook_interface/login_page.dart';
import 'package:facebook_interface/view/TextForm.dart';
import 'package:facebook_interface/view/footer.dart';
import 'package:facebook_interface/view/header.dart';
import 'package:facebook_interface/view/social_buttons.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFE),
      appBar: AppBar(
        backgroundColor: const Color(0xff495994),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Center(
              child: Column(
                children: [
                  const Header(
                      title: "Sign Up",
                      description:
                          "Please register to access the app's features."),
                  const SizedBox(
                    height: 30,
                  ),
                  const SocialButtons(),
                  const TextForm(
                    txtcheckbox: '  I Agree with Private Policy',
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Footer(
                    ontap: () {},
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
          ),
        ],
      ),
    );
  }
}
