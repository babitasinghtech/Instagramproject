import 'package:flutter/material.dart';
import 'package:instagram/screens/bottomnav/bottomnav.dart';
import 'package:instagram/screens/sign_up/signscreen.dart';
import 'package:instagram/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customImage(
                imgurl: "assets/images/Instagram Logo (1).png",
                // imagePath: "assets/images/Instagram Logo (1).png",
              ),
              const SizedBox(height: 20),
              UiHelper.customTextField(
                controller: emailController,
                hintText: "Phone numer, username or email adress",
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              UiHelper.customTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: UiHelper.customTextButton(
                      text: "Forgot Password?",
                      onPressed: () {
                        // Handle forgot password functionality
                      },
                      buttonname: 'Forgot Password',
                      // callback: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              UiHelper.customElevatedButton(
                buttonText: "Log In",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomnavScreen()));
                  // Validate input and proceed with login functionality
                  final email = emailController.text.trim();
                  final password = passwordController.text.trim();

                  if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please fill all fields")),
                    );
                  } else {
                    // Proceed with login
                    print("Email: $email, Password: $password");
                  }
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.customImage(
                    imgurl: "assets/images/Icon (1) copy.png",
                    // imagePath: "assets/images/Icon (1) copy.png",
                  ),
                  UiHelper.customTextButton(
                    text: "Log in with Facebook",
                    onPressed: () {
                      // Handle Facebook login functionality
                    },
                    buttonname: "Log in with Facebook",
                    //   callback: () {},
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "OR",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  UiHelper.customTextButton(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    buttonname: "Sign Up",
                    //   callback: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
