import './members.dart';
import 'package:flutter/material.dart';

class Characters extends StatefulWidget {
  @override
  _CharactersState createState() => _CharactersState();
}

class _CharactersState extends State<Characters> {
  List<Member> members = [
    Member(image: "assets/images/itachi_poster.jpg", name: 'Itachi Uchiha'),
    Member(image: "assets/images/opm.jpg", name: 'One Punch man'),
    Member(image: "assets/images/itachi_poster.jpg", name: 'Itachi Uchiha'),
    Member(image: "assets/images/opm.jpg", name: 'One Punch man'),
    Member(image: "assets/images/itachi_poster.jpg", name: 'Itachi Uchiha'),
    Member(image: "assets/images/opm.jpg", name: 'One Punch man'),
    Member(image: "assets/images/itachi_poster.jpg", name: 'Itachi Uchiha'),
    Member(image: "assets/images/opm.jpg", name: 'One Punch man'),
    Member(image: "assets/images/itachi_poster.jpg", name: 'Itachi Uchiha'),
    Member(image: "assets/images/opm.jpg", name: 'One Punch man'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 200.0,
        itemCount: members.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              width: 160,
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      members[index].image,
                      fit: BoxFit.fill,
                    ),
                    Center(
                      child: Text(
                        members[index].name,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
