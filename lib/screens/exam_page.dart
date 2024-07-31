import 'package:first_app/constant/app_text_style.dart';
import 'package:first_app/constant/buttons/buttons.dart';
import 'package:first_app/constant/screen_size.dart';
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/welcome.svg",
              height: valueResult / 2,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Flexible(
              child: Text(
                "Lorem Ipsum is fgd fgf dg mfdşg mfdş gşlfd kgş şg mfdş gşlfd kgş  fg dfgfdg mfdş fgdfgf  dgmfd şgmfd şgşl fdk fg dfgfdg mfdş fgdfgf  dgmfd şgmfd şgşl fdkgş  gmfdşgşlfdkgş  lfdkgşlfdkg şl fkdg şlkfdş lgkşl dfkg fdlkgşldkf şlfd ",
                style: AppTextStyle.quizQuestionText(valueTextSize),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
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
                  btnHeight: 35,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
