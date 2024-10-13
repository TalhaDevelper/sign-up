import 'package:flutter/material.dart';
import 'package:singup_2nd/constant-wigets/login_button_widget.dart';
import 'package:singup_2nd/constant-wigets/next_page_button.dart';
import 'package:singup_2nd/constant-wigets/screen_navigator_button.dart';
import 'package:singup_2nd/constant-wigets/textfield_widgets.dart';
import 'package:singup_2nd/screens/login_screen/login_screen.dart';
import 'package:singup_2nd/utilis/app_colors.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: AppColors.bgColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey!",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          "Join now",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 220,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: AppColors.boxColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ScreenNavigaorButton(
                              navigatoronPressed: () {},
                              navigatorText: "Sign Up",
                            ),
                            ScreenNavigaorButton(
                              navigatoronPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginView()));
                              },
                              navigatorText: "Login",
                            ),
                          ],
                        ),
                        TextFieldWidgets(
                          fieldtext: 'Enter email id',
                          password: false, 
                          controller: _emailController,
                        ),
                        TextFieldWidgets(
                          fieldtext: 'Create password',
                          password: true,
                          controller: _passwordController,
                        ),
                        LoginButton(
                          loginbuttonPressed: () {
                            print("Sign Up Button Pressed");
                          },
                          loginbuttonText: "Sign Up",
                        ),
                        NextPageButton(
                            nextpagePressed: () {},
                            nextpageText: "Or Login here"),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Terms and Conditions Apply*",
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
