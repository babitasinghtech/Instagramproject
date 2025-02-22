import 'package:flutter/material.dart';
import 'package:instagram/screens/Login/login_screen.dart';
import 'package:instagram/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //yhan se logo & icon center m aa jayega
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //yhan se logo center m aa jata hai
          children: [
            UiHelper.customImage(
                imgurl: "assets/images/Icon (1).png",
              //  imagePath: 'assets/images/Icon (1).png'
              ),
            const SizedBox(
              height: 15,
            ),
            UiHelper.customImage(
                imgurl: "assets/images/Instagram Logo (1).png",
               // imagePath: 'assets/images/Instagram Logo (1).png'
               )
          ],
        ),
      ),
    );
  }
}
