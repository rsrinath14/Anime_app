import 'dart:ui';

import 'package:flutter/material.dart';

class BannerTitle extends StatelessWidget {
  final String _animeTitle;

  BannerTitle(this._animeTitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.black45,
              child: Text(
                _animeTitle,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ));
  }
}
