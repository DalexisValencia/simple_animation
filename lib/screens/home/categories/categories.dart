import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/lists/categories.dart';
import 'package:flutter_application_1/screens/common/header.dart';
import 'package:flutter_application_1/screens/home/categories/categories__card.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height:
          realScreenHeight(context, MediaQuery.of(context).size.height) * 0.23,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * horizontalPadding,
            ),
            child: HeaderSection(
              title: 'Category',
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * horizontalPadding,
                top: 10,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories
                    .asMap()
                    .entries
                    .map(
                      (e) => CategoryCard(
                        category: e.value,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SizedBox(
            height:
                realScreenHeight(context, MediaQuery.of(context).size.height) *
                    0.02,
          )
        ],
      ),
    );
  }
}
