import 'package:flutter/material.dart';
import 'package:singup_2nd/utilis/app_colors.dart';

class NextPageButton extends StatefulWidget {
  final VoidCallback nextpagePressed;
  final String nextpageText; 
  const NextPageButton({super.key, required this.nextpagePressed, required this.nextpageText,});

  @override
  State<NextPageButton> createState() => _NextPageButtonState();
}

class _NextPageButtonState extends State<NextPageButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
      child: ElevatedButton(
        onPressed: widget.nextpagePressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0  
        ),
        child: Text(widget.nextpageText, 
        style: Theme.of(context).textTheme.bodySmall,
        ),
        ),
    );
  }
}