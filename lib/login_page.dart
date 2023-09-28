import 'package:facebook_interface/signup__page.dart';
import 'package:facebook_interface/view/TextForm.dart';
import 'package:facebook_interface/view/footer.dart';
import 'package:facebook_interface/view/header.dart';
import 'package:facebook_interface/view/social_buttons.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => Login_State();
}

class Login_State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xff495994)),
      backgroundColor: const Color(0xffF8FAFE),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Center(
              child: Column(
                children: [
                  const Header(
                      title: "Login",
                      description: "Please login to continue using our app."),
                  const SizedBox(
                    height: 30,
                  ),
                  const SocialButtons(),
                  const TextForm(
                    txtcheckbox: '  Remember Me',
                    forgetPasswordText: "Forget Password ?",
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Footer(
                    ontap: () {},
                    buttontext: 'Login',
                    footertxt: "Don't have an account?",
                    action_head: 'Sign up',
                    page: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUp();
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
