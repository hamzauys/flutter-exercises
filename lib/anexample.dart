import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/101/imagelearn.dart';



class Notepage extends StatelessWidget {
  const Notepage({super.key});
  static const _sa = 'Selamun aleyküm';
  static const _as = 'Aleyküm selam';
  static const _create = 'create a note';
  static const _bur = 'buradan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            PngImage(name: ImageItems.bavaria),
            textwidget(context: context),
            subtitlewidget(),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: SizedBox(
                height: Heightforbuttons.highheight,
                child: Center(child:Text(_create,
                style: Theme.of(context).textTheme.headlineMedium,)))),

            TextButton(onPressed: () {}, child: Text(_bur,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.blueGrey
            ),)),
          ],

        ),
      ),



    );
  }





}

class subtitlewidget extends StatelessWidget {
  final TextAlign textAlign;

  const subtitlewidget({
    super.key,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems().verticalPadding,
      child: Text(Notepage._as,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.blueGrey),

      ),
    );
  }
}

class textwidget extends StatelessWidget {
  const textwidget({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) => Text(Notepage._sa,
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.displayLarge?.copyWith(
        color: Colors.black,
        fontSize: 100),
      );
}
class PaddingItems{
  final EdgeInsets horizontalPadding = const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
class PngImage extends StatelessWidget {
  final String name;

  const PngImage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(name, fit: BoxFit.cover);
  }
}

class Heightforbuttons{
  static const double normalheight = 50;
  static const double highheight = 100;

}