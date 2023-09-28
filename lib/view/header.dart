import 'package:flutter/material.dart';
class Header extends StatelessWidget {
   const Header({super.key, required this.title, required this.description});
final String title;
final String description;

  @override
  Widget build(BuildContext context) {
    return  Column(
     children: [
       Text(title,
         style: const TextStyle(
           color: Colors.black,
           fontSize: 34,
         ),
       ),
       const SizedBox(height: 20),
       Text(description,
         style: const TextStyle(
             color: Colors.grey,
             fontSize: 15,
             fontWeight: FontWeight.w500
         ),
       ),
       const SizedBox(height: 20),
     ],
    );
  }
}
