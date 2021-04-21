import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class Banners extends StatefulWidget {
  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  final CarouselController _controller = CarouselController();
  List<int> _galleryExample = [1, 2, 3, 4];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight =
        realScreenHeight(context, MediaQuery.of(context).size.height) * 0.45;
    return Container(
      // color: Colors.amber[100],
      height: containerHeight,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * horizontalPadding,
        // vertical: 20,
        vertical: MediaQuery.of(context).size.height * (horizontalPadding / 5),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                aspectRatio: 2 / 1,
                // height: containerHeight - realScreenHeight(context, MediaQuery.of(context).size.height) * 0.50,
                viewportFraction: 1.0,
              ),
              items: _galleryExample.asMap().entries.map((entry) {
                int idx = entry.key;
                return Container(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text('holiwis $idx'),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            // color: Colors.blue[300],
            padding: EdgeInsets.symmetric(
              vertical:
                  MediaQuery.of(context).size.width * (horizontalPadding / 4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: _galleryExample.asMap().entries.map((entry) {
                int idx = entry.key;
                return GestureDetector(
                  onTap: () {
                    _controller.animateToPage(idx);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 7,
                    ),
                    width: MediaQuery.of(context).size.width * 0.025,
                    height: MediaQuery.of(context).size.width * 0.025,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
