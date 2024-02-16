import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_exam.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/tobeto-logo.png',
        fit: BoxFit.contain,
      ),
      title: const Text(
        "'Tobeto ile geleceğini keşfet!'",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: HomePageExam(),
      durationInSeconds: 6,
    );
  }
}
