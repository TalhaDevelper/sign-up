import 'package:flutter/material.dart';
import 'package:singup_2nd/screens/login_screen/login_screen.dart';
import 'package:singup_2nd/screens/signup_screen/signup_screen.dart';
import 'package:singup_2nd/utilis/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              headlineLarge: TextStyle(fontSize: 38, fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: AppColors.whitefontColor),
              headlineMedium: TextStyle(fontSize: 33, fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: AppColors.whitefontColor),
              headlineSmall: TextStyle(fontSize: 64, fontFamily: 'Poppins', fontWeight: FontWeight.w700, color: AppColors.whitefontColor),
              titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins', color: AppColors.bgColor),
              titleMedium: TextStyle(fontSize: 16, fontFamily: 'Poppins', color: AppColors.bgColor),
              titleSmall: TextStyle(fontSize: 12, fontFamily: 'Poppins', color: AppColors.bgColor),
              bodyLarge: TextStyle(fontSize: 15, fontFamily: 'Poppins', color: AppColors.bgColor),
              bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Poppins', color: AppColors.whitefontColor),
              bodySmall: TextStyle(fontSize: 14, fontFamily: 'Poppins', color: AppColors.bgColor),
              )),
      home: const SignupView(),
    );
  }
}
