import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  final String _bannerPath;

  Poster(this._bannerPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(
          height: 400,
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Image.asset(
          _bannerPath,
          fit: BoxFit.cover,
        ));
  }
}
