import 'package:first_app/components/rounded_input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/images/welcome.svg",
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Container(
                      width: 280,
                      height: 280,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 188, 188, 188),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          RoundedInputFields(
                            hintText: "E-mail",
                            icon: Icons.mail,
                            onChange: (value) {},
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
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
