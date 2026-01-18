import 'package:flutter/material.dart';


class Indicadatorlearn extends StatelessWidget {
  const Indicadatorlearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Center(child: CircularProgressIndicator(

        ))],
      ),
      body: const Center(
        child: LinearProgressIndicator(
                  ),
      ),
    );
  }
}
