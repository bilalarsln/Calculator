import 'package:first_app/components/rounded_button.dart';
import 'package:first_app/components/rounded_input_fields.dart';
import 'package:first_app/components/square_box.dart';
import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/screen_size.dart';

//import 'package:first_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenBoyut = ScreenSize.screenWidthControl(screenWidth);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.7,
              child: SvgPicture.asset(
                "assets/images/up_wave.svg",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/welcome.svg",
                height: 200,
                width: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    height: 280,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 188, 188, 188),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        RoundedInputFields(
                          hintText: "G-mail",
                          isEmail: true,
                          isPassword: false,
                          icon: Icons.mail,
                          onChange: (value) {},
                        ),
                        RoundedInputFields(
                          hintText: "Password",
                          isEmail: false,
                          isPassword: true,
                          icon: Icons.password,
                          onChange: (value) {},
                        ),
                        Text(
                          "Forget your password?",
                          style:
                              AppTextStyle.miniBoldDescriptionText(screenBoyut),
                        ),
                        RoundedButton(
                          btnText: "LOGIN",
                          onPressed: () {},
                          btnColor: Color.fromARGB(255, 19, 153, 255),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      indent: 50,
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or Continue With",
                        style:
                            AppTextStyle.miniBoldDescriptionText(screenBoyut),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        endIndent: 50,
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareBox(
                    imagePath: "assets/logos/google_logo.svg",
                  ),
                  SquareBox(
                    imagePath: "assets/logos/apple_logo.svg",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member?",
                    style: AppTextStyle.miniBoldDescriptionText(screenBoyut),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text(
                      " Register Now",
                      style: AppTextStyle.miniBoldDescriptionText(screenBoyut),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.7,
              child: SvgPicture.asset(
                "assets/images/down_wave.svg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
