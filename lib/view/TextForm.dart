import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final String? txtcheckbox;
  final String? forgetPasswordText;

  const TextForm({Key? key, required this.txtcheckbox, this.forgetPasswordText})
      : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showpassword = true;
  bool rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Email',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                borderRadius: BorderRadius.circular(8.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(8.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if ((value ?? "").isEmpty) {
                return "You Must Write The Email";
              } else if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value ?? "")) {
                return "Invalid email address.";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: showpassword,
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    showpassword = !showpassword;
                  });
                },
                icon: Icon(
                    showpassword ? Icons.remove_red_eye : Icons.visibility_off),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.blueAccent, width: 2),
                borderRadius: BorderRadius.circular(8.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(8.0),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if ((value ?? "").isEmpty) {
                return "You Must Write A valid Password";
              } else if (!RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                  .hasMatch(value ?? "")) {
                return "Enter a valid password";
              }
            },
          ),
          Row(
            children: [
              Container(
                width: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                child: Checkbox(
                  value: rememberPassword,
                  onChanged: (value) {
                    setState(() {
                      rememberPassword = value ?? false;
                    });
                  },
                  shape: const CircleBorder(),
                ),
              ),
              Text(
                widget.txtcheckbox ?? "",
                style: const TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const Spacer(
                flex: 1,
              ),
              if (widget.forgetPasswordText != null)
                Text(widget.forgetPasswordText!,
                    style: const TextStyle(color: Colors.grey, fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
