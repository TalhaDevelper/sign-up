import 'package:flutter/material.dart';
import 'package:singup_2nd/utilis/app_colors.dart';

class ScreenNavigaorButton extends StatefulWidget {
  final VoidCallback navigatoronPressed;
  final String navigatorText; 
  const ScreenNavigaorButton({super.key, required this.navigatoronPressed, required this.navigatorText, });

  @override
  State<ScreenNavigaorButton> createState() => _ScreenNavigaorButtonState();
}

class _ScreenNavigaorButtonState extends State<ScreenNavigaorButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 30),
      child: ElevatedButton(
        onPressed: widget.navigatoronPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0  
        ),
        child: Text(widget.navigatorText, 
        style: Theme.of(context).textTheme.titleLarge,
        ),
        ),
    );
  }
}