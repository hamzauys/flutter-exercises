import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Example"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 300,
            child: Image.asset(
              ImageItems.thelflag,   // ✅ burada static erişim
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

/// Asset yollarını yöneten sınıf
class ImageItems {
  static const String appleWithBook =
      "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  static const String thelflag =
      "assets/Konstantiniyye_Naval_Ensign.png";
  static const String selcuk =
      "assets/pngs/selcukflag.png";
  static const String nazi =
      "assets/division_flag.png";
  static const String bavaria =
      "assets/bavaria.png";
  static const String ex =
      "assets/9qumec95.jpg";


}
