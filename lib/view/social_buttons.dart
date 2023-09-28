import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          "Enter via social networks",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        const Divider(
          thickness: 0.8,
          color: Colors.grey,
          indent: 25,
          endIndent: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 55.0,
                    vertical: 13.0,
                  ),
                  backgroundColor: Color(0xff76A9EA),
                ),
                child: const Icon(
                  FontAwesomeIcons.twitter,
                  size: 33,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 55.0,
                    vertical: 13.0,
                  ),
                  backgroundColor: Color(0xff495994),
                ),
                child: const Icon(
                  FontAwesomeIcons.facebook,
                  size: 33,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        const Text(
          "Or login With email",
          style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
