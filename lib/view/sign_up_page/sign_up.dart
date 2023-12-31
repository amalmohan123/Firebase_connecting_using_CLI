import 'package:fire_auth/helpers/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      "asset/Image/g.webp",
      "asset/Image/f.png",
      "asset/Image/x.webp",
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ConstColors.loginBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.33,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "asset/Image/student_fire_new-removebg.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
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
                    hintText: 'Your email id',
                    // prefixIcon: Icon(Icons.mail,color: Colors.blueAccent,),
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
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
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
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    // prefixIcon: Icon(Icons.password,color: Colors.blueAccent,),
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
              const SizedBox(height: 36),
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
                    'Sign up',
                    style: TextStyle(
                        color: ConstColors.loginPageText,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Have an account?",
                  style: const TextStyle(
                      color: ConstColors.blackColor, fontSize: 15),
                  children: [
                    TextSpan(
                      text: '  Go back',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ConstColors.blackColor,
                          fontSize: 18),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pop();
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Sign up using on the following methods.',
                style: TextStyle(
                  color: ConstColors.blackColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        images[index],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
