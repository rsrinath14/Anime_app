import 'package:flutter/material.dart';
import 'animeDetails.dart';

void main() => runApp(Details());

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(0xFF, 0x14, 0x1D, 0x26)),
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}
