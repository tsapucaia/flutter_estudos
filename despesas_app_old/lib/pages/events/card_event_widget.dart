import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {

  CardEvent();

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
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                  child: Text(
                    "Evento",
                    style:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 10.0),
                  child: Text(
                    "2 Membros",
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
