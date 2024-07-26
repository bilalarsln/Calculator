import 'package:first_app/screens/result_page.dart';
import 'package:first_app/widgets/button_style.dart';
import 'package:flutter/material.dart';

class Uygulamam extends StatefulWidget {
  const Uygulamam({super.key});

  @override
  State<Uygulamam> createState() => _UygulamamState();
}

class _UygulamamState extends State<Uygulamam> {
  int? num1;
  int? num2;
  String showResult = "";
  String? result;
  String pastResult = "";
  String? processHolder;

  void btnClick(String btnValueHolder) {
    print(btnValueHolder);

    if (btnValueHolder == "AC") {
      result = "";
      pastResult = "";
    } else if (btnValueHolder == "C") {
      result = "";
    } else if (btnValueHolder == "Back") {
      result = showResult.substring(0, showResult.length - 1);
    } else if (btnValueHolder == "/") {
      num1 = int.parse(showResult);
      result = "";
      processHolder = btnValueHolder;
    } else if (btnValueHolder == "x") {
      num1 = int.parse(showResult);
      result = "";
      processHolder = btnValueHolder;
    } else if (btnValueHolder == "+") {
      num1 = int.parse(showResult);
      result = "";
      processHolder = btnValueHolder;
    } else if (btnValueHolder == "-") {
      num1 = int.parse(showResult);
      result = "";
      processHolder = btnValueHolder;
    } else if (btnValueHolder == "+/-") {
      if (showResult[0] != "-") {
        result = "-" + showResult;
      } else {
        result = showResult.substring(1);
      }
    } else if (btnValueHolder == "=") {
      num2 = int.parse(showResult);
      if (processHolder == '+') {
        result = (num1! + num2!).toString();
        pastResult =
            num1.toString() + processHolder.toString() + num2.toString();
      } else if (processHolder == '-') {
        result = (num1! - num2!).toString();
        pastResult =
            num1.toString() + processHolder.toString() + num2.toString();
      } else if (processHolder == 'x') {
        result = (num1! * num2!).toString();
        pastResult =
            num1.toString() + processHolder.toString() + num2.toString();
      } else if (processHolder == '/') {
        result = (num1! / num2!).toString();
        pastResult =
            num1.toString() + processHolder.toString() + num2.toString();
      }
    }
    //rakamlar
    else {
      result = int.parse(showResult + btnValueHolder).toString();
    }
    setState(() {
      showResult = result!;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width * 0.98;
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
                Text(
                  pastResult,
                  style: const TextStyle(fontSize: 20, color: Colors.black26),
                ),
                Text(
                  showResult,
                  style: const TextStyle(fontSize: 28),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Builder(
                      builder: (context) => ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ResultPage(showResult: showResult.toString()),
                            ),
                          );
                        },
                        child: const Text("Send"),
                      ),
                    )
                  ],
                ),
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
                        buttonBgColor: 0xFFFF906C,
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
                        texts: '/',
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
                        click: btnClick),
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
