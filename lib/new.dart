import 'package:flutter/material.dart';


class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);
  final String name = 'veli';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: const Alignment(0, -0.3), // X=0 yatay ortada, Y=-0.3 dikeyde yukarı
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hellos Hellos Hellos $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                color: Colors.lime,
                fontStyle: FontStyle.italic,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Z $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyle,
              ),

            Text(
              'İsim: $name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.blue,

              )
            ),
          ],
        ),
      ),
    );
  } //  MATERİAL İO SİTESİ
}
class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    color: Colors.lime,
    fontStyle: FontStyle.italic,
    fontSize: 150,
    fontWeight: FontWeight.bold,);
}
