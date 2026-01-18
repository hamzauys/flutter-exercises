import 'package:flutter/material.dart';
import 'package:untitled2/product/counter_hello_button.dart';
import 'package:untitled2/product/language/language_items.dart';



class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {

  int countvalue = 0;

  int countervalue = 0;


  void _updateCounter(bool isIncrement){

    if (isIncrement){
      countvalue = countvalue + 1;

    }
    else{
      countvalue -= 1;

    }

    setState(() {

    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle),),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          increasing(),
          decreasing(),
        ],
      ),

      body: Center(
          child: Column(
        children: [
          Text(
              countvalue.toString(),
              style: Theme.of(context).textTheme.displayLarge,),
          const Placeholder(),
          const CounterHelloButton(),

        ],

      )
          ),

    );
  }

  FloatingActionButton increasing() {
    print("burada");
    return FloatingActionButton(
            onPressed: (){
              _updateCounter(true);
            },
            child: const Icon(Icons.add));
  }

  Padding decreasing() {
    return Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FloatingActionButton(
              onPressed: (){
                _updateCounter(false);
                },

              child: const Icon(Icons.remove)),
        );
  }
}
