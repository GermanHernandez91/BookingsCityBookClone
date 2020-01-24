import 'package:city_book_clone/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class ReservationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleWidget(title: "Reserved"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.add_photo_alternate,
              size: 70,
              color: Colors.blueGrey,
            ),
            SizedBox(height: 5),
            Text(
              "You currently have no upcoming reservations",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
