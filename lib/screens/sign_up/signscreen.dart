import 'package:flutter/material.dart';
import 'package:instagram/screens/Login/login_screen.dart';
import 'package:instagram/widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            UiHelper.customImage(
             // imagePath: "assets/images/Instagram Logo (1).png",
              imgurl: "assets/images/Instagram Logo (1).png",
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.customTextField(
              controller: emailController,
              hintText: "Enter Your Username",
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.customTextField(
              controller: emailController,
              hintText: "Enter Your Email",
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
            const SizedBox(height: 15),
            UiHelper.customElevatedButton(
              buttonText: "Sign Up",
              onPressed: () {
                // Validate input and proceed with login functionality
                final email = emailController.text.trim();
                final password = passwordController.text.trim();

                if (email.isEmpty || password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please fill all fields")),
                  );
                } else {
                  // Proceed with login
                  print("Enter Your Email: $email, Password: $password,");
                }
              },
            ),
            const SizedBox(height: 20),
            const Text(
              "Or With",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 15),
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
                  //callback: () { 
                  
                  // },
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 14),
                ),
                UiHelper.customTextButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  buttonname: "Login", 
                  //callback: () {  },
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
