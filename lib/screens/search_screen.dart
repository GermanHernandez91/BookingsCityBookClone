import 'package:city_book_clone/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleWidget(title: "Search"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Text("Destinations", style: Theme.of(context).textTheme.title),
          SizedBox(height: 10),
          Container(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              children: <Widget>[
                DestinationItem(image: "food1"),
                DestinationItem(image: "food2"),
                DestinationItem(image: "food3"),
                DestinationItem(image: "food4"),
                DestinationItem(image: "food1"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationItem extends StatelessWidget {
  final String image;

  DestinationItem({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/$image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          "London",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
