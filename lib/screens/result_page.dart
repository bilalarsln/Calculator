import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String showResult;

  const ResultPage({super.key, required this.showResult});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result: ${widget.showResult}"),
          ],
        ),
      ),
    );
  }
}
