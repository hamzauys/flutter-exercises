import 'package:flutter/material.dart';

class  Mycolour extends StatelessWidget {
  const Mycolour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              color: Theme.of(context).colorScheme.error,
              child: const Text('data',)),

        ],
      ),


      
    );
  }
}
class colourss {
  static const Color porchase = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}