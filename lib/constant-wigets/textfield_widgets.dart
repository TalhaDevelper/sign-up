import 'package:flutter/material.dart';
import 'package:singup_2nd/utilis/app_colors.dart';

class TextFieldWidgets extends StatefulWidget {
  final String fieldtext;
  final bool password;
  const TextFieldWidgets({super.key, required this.fieldtext, required this.password, required TextEditingController controller, });

  @override
  State<TextFieldWidgets> createState() => _TextFieldWidgetsState();
}

class _TextFieldWidgetsState extends State<TextFieldWidgets> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Text(
            widget.fieldtext,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 18),
                fillColor: AppColors.whitefontColor,
                filled: true,
                hoverColor: AppColors.whitefontColor,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(color: AppColors.bgColor, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    borderSide:
                        BorderSide(color: AppColors.bgColor, width: 2))),
                obscureText: widget.password,
                keyboardType: widget.password ? TextInputType.text : TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              )
      ]),
    );
  }
}
