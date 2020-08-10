import 'dart:ui';

import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String _description;

  Description(this._description);

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
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
                color: Color.fromARGB(0xFF, 0x14, 0x1D, 0x26),
              ),
              padding: EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      _description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
