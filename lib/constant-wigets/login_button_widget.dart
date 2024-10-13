import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:singup_2nd/utilis/app_colors.dart';

class LoginButton extends StatefulWidget {
  final VoidCallback loginbuttonPressed;
  final String loginbuttonText;
  const LoginButton({
    super.key,
    required this.loginbuttonPressed,
    required this.loginbuttonText,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.bgColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: widget.loginbuttonPressed,
              child: Text(
                widget.loginbuttonText,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
        
        ],
      ),
    );
  }
}
