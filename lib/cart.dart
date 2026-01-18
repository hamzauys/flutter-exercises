import 'package:flutter/material.dart';
import 'package:untitled2/101/iconaplly.dart';

class Mycardaplly extends StatelessWidget {
  const Mycardaplly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            color: ColourModels.turquoiseblue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)
            ),      //RoundedRectangleBorder, CircleBorder,StadiumBorder(),
            child:
              SizedBox(
                  height: 100,
                  width: 300,
                  child: Center(
                    child: Text(
                        'aii',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
    ),
          ),

          SizedBox(height: 10,),

          CustomCard(
              child: const SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Text('aidl')),
              )
          ),
        ],
      ),
    );
  }
}
class ProjectMargins{
  static const cardMargin = EdgeInsets.all(10);
  static RoundedRectangleBorder buildRoundedRectangleBorder() =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(200));
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
      shape: ProjectMargins.buildRoundedRectangleBorder()
    );
  }
}
