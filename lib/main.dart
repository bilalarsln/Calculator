import 'package:flutter/material.dart';
import 'package:first_app/widgets/button_style.dart'; // Bu import doğru yolda olmalı

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatefulWidget {
  const Uygulamam({super.key});

  @override
  State<Uygulamam> createState() => _UygulamamState();
}

class _UygulamamState extends State<Uygulamam> {
  void btnClick(String btnValueHolder) {
    print(btnValueHolder);
    print("oldu");
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width * 0.95;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Nunito",
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            "Hesap Makinesi",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: containerWidth,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Data",
                  style: TextStyle(fontFamily: 'Digital7', fontSize: 25),
                ),
                const Text("Veri"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                        texts: 'AC',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: 'C',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: 'Back',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '/ ',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                        texts: '9',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                      texts: '8',
                      buttonBgColor: 0xFFFF5722,
                      textColor: 0xFF000000,
                      textSize: 24,
                      click: btnClick('dene'),
                    ),
                    CalculatorButton(
                        texts: '7',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: 'x',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                        texts: '6',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '5',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '4',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '-',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 30,
                        click: btnClick),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                        texts: '3',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '2',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '1',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '+',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 30,
                        click: btnClick),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                        texts: '+/-',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '0',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '00',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 24,
                        click: btnClick),
                    CalculatorButton(
                        texts: '=',
                        buttonBgColor: 0xFFFF5722,
                        textColor: 0xFF000000,
                        textSize: 30,
                        click: btnClick),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
