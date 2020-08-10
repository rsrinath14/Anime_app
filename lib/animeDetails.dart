import 'package:flutter/material.dart';
import 'Infobanner/poster.dart';
import 'Infobanner/title.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Poster("assets/images/itachi_poster.jpg"),
          ]),
    );
  }
}
