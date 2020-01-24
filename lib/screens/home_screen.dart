import 'package:city_book_clone/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleWidget(title: "Hi German"),
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: <Widget>[
                _buildHeaderRow(
                  context,
                  "Where to next?",
                  "Not sure? Here are some suggestions:",
                ),
                SizedBox(height: 10),
                Container(
                  height: 200,
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildPlaceItem(context, "food1"),
                      _buildPlaceItem(context, "food2"),
                      _buildPlaceItem(context, "food3"),
                      _buildPlaceItem(context, "food4"),
                      _buildPlaceItem(context, "food1"),
                      _buildPlaceItem(context, "food2"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          _buildHeaderRow(
            context,
            "Tonight's dinner",
            "Check out these places",
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: <Widget>[
                DinnerItem(image: "food1"),
                DinnerItem(image: "food2"),
                DinnerItem(image: "food3"),
                DinnerItem(image: "food4"),
                DinnerItem(image: "food1"),
                DinnerItem(image: "food2"),
                DinnerItem(image: "food3"),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildHeaderRow(
            context,
            "Fun things to do",
            "Discover new places",
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildPlaceItem(context, "food1"),
                _buildPlaceItem(context, "food2"),
                _buildPlaceItem(context, "food3"),
                _buildPlaceItem(context, "food4"),
                _buildPlaceItem(context, "food1"),
                _buildPlaceItem(context, "food2"),
              ],
            ),
          ),
          SizedBox(height: 20),
          _buildHeaderRow(
            context,
            "Time to face the music",
            "Live music--explore the sound of Edinburgh.",
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildPlaceItem(context, "food1"),
                _buildPlaceItem(context, "food2"),
                _buildPlaceItem(context, "food3"),
                _buildPlaceItem(context, "food4"),
                _buildPlaceItem(context, "food1"),
                _buildPlaceItem(context, "food2"),
              ],
            ),
          ),
          SizedBox(height: 30),
          _buildHeaderRow(
            context,
            "Not sure what to do next?",
            "Don't worry, we've got you.",
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: <Widget>[
                DinnerItem(image: "food1"),
                DinnerItem(image: "food2"),
                DinnerItem(image: "food3"),
                DinnerItem(image: "food4"),
                DinnerItem(image: "food1"),
                DinnerItem(image: "food2"),
                DinnerItem(image: "food3"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildPlaceItem(BuildContext context, String image) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage("assets/$image.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  "7 places",
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 3),
                Text(
                  "Famous city squares",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.white,
                      ),
                      Text(
                        "Amsterdam",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildHeaderRow(BuildContext context, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildHeader(context, title, subtitle),
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  Column _buildHeader(BuildContext context, String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.headline),
        SizedBox(height: 3),
        Text(subtitle, style: Theme.of(context).textTheme.subhead)
      ],
    );
  }
}

class DinnerItem extends StatelessWidget {
  final String image;

  DinnerItem({this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/$image.jpg",
            width: 50,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "European restaurant",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Venster33",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Icon(Icons.favorite_border),
      ],
    );
  }
}
