import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget{
  const Customwidget({super.key});
  final String title = 'aq';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                      title: title,
                      onPressed:(){},
                  )),
            )),
          const SizedBox(height: 100),

    Center(
    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: CustomButton(
        title: title,
        onPressed: (){}),
    )),

        ],
      ));
  }
}

class CustomButton extends StatelessWidget with Colourchoices, PaddingUtility {
  CustomButton({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton
      (style: ElevatedButton.styleFrom(
        backgroundColor: redone),
        onPressed: onPressed, // 👈 Dışarıdan gelen fonksiyonu kullanıyoruz ,,,() {} yaparsan olmaz algılamaz
        child: Padding(
          padding: thenormalone,
          child: Center(
            child: Text(title,

              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: green1,
                  fontWeight: FontWeight.bold),

            ),
          ),
        ));
  }
}




mixin Colourchoices{
  final Color redone = Colors.red;
  final Color green1 = Colors.greenAccent;
}

mixin PaddingUtility{

  final  EdgeInsets thenormalone = const EdgeInsets.all(8.0);
  final  EdgeInsets largeone = const EdgeInsets.all(12.0);
}