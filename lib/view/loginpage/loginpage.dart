import 'package:fire_auth/helpers/colors.dart';
import 'package:fire_auth/view/sign_up_page/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.loginBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: SizedBox(
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: GoogleFonts.acme(
                          fontSize: 60,
                          color: const Color.fromARGB(255, 39, 0, 122),
                        ),
                      ),
                      Text(
                        "Welcome",
                        style: GoogleFonts.acme(
                          fontSize: 60,
                          color: ConstColors.loginPageText,
                        ),
                      ),
                      Text(
                        "Sign into your account",
                        style: GoogleFonts.acme(
                            fontSize: 20,
                            color: ConstColors.loginPageText,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                decoration: BoxDecoration(
                  color: ConstColors.loginBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 7,
                      blurRadius: 8,
                      offset: const Offset(1, 1),
                      color: const Color.fromARGB(255, 114, 193, 174)
                          .withOpacity(.8),
                    )
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: ConstColors.loginBackgroundColor,
                        width: 1.5,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: ConstColors.loginBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 7,
                      blurRadius: 8,
                      offset: const Offset(1, 1),
                      color: const Color.fromARGB(255, 114, 193, 174)
                          .withOpacity(.8),
                    )
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: ConstColors.loginBackgroundColor, width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  const Text(
                    'Forgot your Password?',
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 9, 231, 205),
                      Color.fromARGB(255, 53, 226, 228),
                      Color.fromARGB(255, 4, 250, 188),
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(160, 50),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: ConstColors.loginPageText,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              RichText(
                text: TextSpan(
                  text: "Don't have an account?",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 77, 100, 105), fontSize: 18),
                  children: [
                    TextSpan(
                        text: ' Create',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ConstColors.blackColor,
                            fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
