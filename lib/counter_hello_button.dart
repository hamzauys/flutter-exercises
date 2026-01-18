import 'package:flutter/material.dart';


class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {

  int countervalue = 0;
  final String welcometitle = "Merhaba";

  void updatecounter(){
    setState(() {
      ++ countervalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:updatecounter, child: Text('$welcometitle $countervalue'));
  }
}
