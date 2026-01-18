import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/101/column_row.dart';
import 'package:untitled2/101/appbar_try.dart';
import 'package:untitled2/101/paddinglearn.dart';
import 'package:untitled2/101/page_view_learn.dart';
import 'package:untitled2/101/stateful.dart';
import 'package:untitled2/101/stateful_life_cycle_learn.dart';
import '101/new.dart';
import '101/new2.dart';
import '101/button.dart';
import '101/iconaplly.dart';
import '101/colour.dart';
import '101/statelesslearn.dart';
import '101/cart.dart';
import '101/imagelearn.dart';
import '101/anexample.dart';
import '101/customwidget.dart';
import '101/indicadatorlearn.dart';
import '101/list_tile.dart';
import '101/column_row.dart';
import '101/column_row2.dart';
import '101/stack_learn.dart';
import 'demos//stack_demos.dart';
import 'package:stack_trace/stack_trace.dart';








void main() {
  runApp(const MyApp()); // ALİ DAYI
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.yellow,
          strokeWidth: 10,
          circularTrackColor: Colors.white,
        ),

      colorScheme: ThemeData.dark().colorScheme.copyWith(


       error: ColourModels.monza,
      ),
         appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.red,
          elevation: 0,

        )
      ),



      //home: const TextLearnView(),
      //home: const MyButton(),
      home:  StatefulLifeCycleLearn(message: "aaali",),
    ); // MaterialApp
  }
}
