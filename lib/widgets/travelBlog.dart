import 'package:flutter/material.dart';
import 'package:travel_app_new/details.dart';
import 'package:travel_app_new/model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pageControl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageControl,
      itemCount: _list.length,
      itemBuilder: ((context, index) {
        var travel = _list[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(
                travel: travel,
              );
            }));
          },
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, right: 20, bottom: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    travel.imgUrl,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Positioned(
                left: 15,
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                        color: Colors.transparent,
                        child: Text(
                          travel.location,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 30,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
