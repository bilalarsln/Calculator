import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/screen_size.dart';
import 'package:first_app/constant/sizedBox_ratio.dart';
import 'package:first_app/constant/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExamPage extends StatelessWidget {
  const ExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = Width(context);
    double valueTextSize =
        ScreenSize.screenWidthControl(screenWidth)['valueTextSize']!;
    double valueResult =
        ScreenSize.screenWidthControl(screenWidth)['valueResult']!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "DriverApp Test",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/welcome.svg",
                height: valueResult / 2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Text(
                "Lorem Ipsum It is a long established fact that a reader will be distracted ?",
                style: AppTextStyle.quizQuestionText(valueTextSize),
              ),
              SizedboxRatio.sizedBox1quarter(valueResult),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      QuizChoiceButton(btnText: "Adana"),
                      QuizChoiceButton(btnText: "Bursa"),
                      QuizChoiceButton(btnText: "Ceyhan"),
                      QuizChoiceButton(btnText: "Denizli"),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MidButton(
                    btnText: "Cevap",
                    btnBorderRadius: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedboxRatio.sizedBoxWithScale(valueResult, 70),
            ],
          ),
        ),
      ),
    );
  }
}
