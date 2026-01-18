import 'package:flutter/material.dart';
String NAME1() => "yeliz";


String NAME3() => "melis";

String NAME2() => "deniz";
class StatelessLearn extends StatelessWidget{
  const StatelessLearn({super.key});
  @override
  Widget build(BuildContext context){
  return Scaffold(
      appBar: AppBar(),
      body: Column(
       children: [
         TextWidget(text: NAME1()),
         TextWidget(text: NAME2()),
         buildSizedBox(),
         TextWidget(text: NAME3()),

         containerwidget(),

  ],
  ),
      );
}




  SizedBox buildSizedBox() => SizedBox(height: 10);
}

class containerwidget extends StatelessWidget {
  const containerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration
        (borderRadius: BorderRadius.circular(20),
          color: Colors.red),
    );
  }
}


class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}



