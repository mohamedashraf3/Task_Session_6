import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';

class Footer extends StatelessWidget {
  const Footer(
      {super.key,required this.ontap,
      required this.buttontext,
      required this.footertxt,
      required this.action_head, required this.page,
      });

  final VoidCallback ontap;
  final String buttontext;
  final String footertxt;
  final String action_head;
  final VoidCallback page;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 120,
              vertical: 15.0,
            ),
            backgroundColor: Color(0xff495994),
          ),
          child: Text(
            buttontext,
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text: footertxt,
            style: TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
            children: <TextSpan>[
              TextSpan(
                text: action_head,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = page,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
