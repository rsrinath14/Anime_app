import 'package:flutter/material.dart';
import './title.dart';

class Poster extends StatelessWidget {
  final String _bannerPath;
  final String _animeTitle;

  Poster(this._bannerPath, this._animeTitle);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                  constraints: BoxConstraints.expand(
                    height: 390,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.asset(
                    _bannerPath,
                    fit: BoxFit.cover,
                  )),
            )),
        BannerTitle(_animeTitle),
      ],
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo((size.width - size.width / 4), size.height,
        size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
