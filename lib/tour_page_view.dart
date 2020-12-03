import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'data/tour.dart';


List<Tour> images=Tour.defaultList;

final List<Widget> imageSliders = images.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(1.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item.imageUrl, fit: BoxFit.cover, width: 300.0),
            Positioned(
              bottom: 60.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  '${item.title}' ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            ),
            Positioned(
              bottom: 1.0,
              left: 0.0,
              right: 0.0,
              child: Container(

                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child: Text(
                  '${item.subtitle}' ,
                  style: TextStyle(
                    color: Colors.white30,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ),
          ],
        )
    ),
  ),
)).toList();

class TourCarrousel extends StatelessWidget {

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    // Suerte con el challenge :)
    return Center(
        child: Column(

          children: <Widget>[
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(enlargeCenterPage: true, height: 200),
              carouselController: _controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[



              ],
            )
          ],

        ),

    );
    
  }
}
