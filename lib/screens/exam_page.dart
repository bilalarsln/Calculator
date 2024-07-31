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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        // margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
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
                "Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like) It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like) It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)is fgd fgf dg mfdşg mfdş gşlfd kgş şg mfdş gşlfd kgş  fg dfgfdg mfdş fgdfgf  dgmfd şgmfd Lorem Ipsum is fgd fgf dg mfdşg mfdş gşlfd kgş şg mfdş gşlfd kgş  fg dfgfdg mfdşfgf tggmfşşşdmfddfgşfgfdd fgişşfgddfgffdfggfdşdlşf"),
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
            const SizedBox(
              height: 55,
            ),
          ],
        ),
      ),
    );
  }
}
