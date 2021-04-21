import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/screens/home/banners/banners.dart';
import 'package:flutter_application_1/screens/home/categories/categories.dart';
import 'package:flutter_application_1/screens/home/menu/menu.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * (horizontalPadding / 2),
          ),
          child: Text(
            'Hi, Welcome app',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        toolbarHeight: customToolbarheight,
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * horizontalPadding,
            ),
            width: 37,
            height: 37,
            child: RaisedButton(
              color: secondaryColor_withOpacity,
              elevation: 0,
              padding: EdgeInsets.all(0),
              shape: CircleBorder(),
              onPressed: () {},
              child: Icon(
                Icons.search,
                color: secondaryColor,
                size: 23,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height:
                realScreenHeight(context, MediaQuery.of(context).size.height),
            color: primaryColor,
            child: SizedBox.expand(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Banners(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Categories(),
                    color: Colors.yellow,
                    height: realScreenHeight(
                            context, MediaQuery.of(context).size.height) *
                        0.23,
                  ),
                  Expanded(
                    flex: 2,
                    child: Menu(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'car',
          )
        ],
      ),
    );
  }
}

class TestContainer extends StatelessWidget {
  final Color color;
  TestContainer({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: MediaQuery.of(context).size.width,
      child: Text("prueba"),
    );
  }
}
