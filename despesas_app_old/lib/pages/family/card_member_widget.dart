import 'package:flutter/material.dart';

class CardMember extends StatelessWidget {

  CardMember();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: GestureDetector(
        onTap: () {

        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 4.0, 2.0, 2.0),
                  child: Text(
                    "Nome: Thiago Sapucaia",
                    style:
                    TextStyle(fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 2.0, 2.0, 0.0),
                  child: Text(
                    "Idade: 27 anos",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 2.0, 4.0),
                  child: Text(
                    "Bebida Alcoolica: Sim",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 20.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
