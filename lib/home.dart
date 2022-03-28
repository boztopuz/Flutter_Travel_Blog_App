import 'package:flutter/material.dart';
import 'package:travel_app_new/widgets/most_popular.dart';
import 'package:travel_app_new/widgets/travelBlog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Travel Blog",
              style: TextStyle(color: Colors.black, fontSize: 36),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelBlog(),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          ),
        ],
      ),
    );
  }
}
