import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/models/categories.dart';

class CategoryCard extends StatelessWidget {
  final CategorieModel category;
  CategoryCard({
    Key key,
    this.category,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: (MediaQuery.of(context).size.width * horizontalPadding) / 4,
        vertical: (MediaQuery.of(context).size.width * horizontalPadding) / 4,
      ),
      width: MediaQuery.of(context).size.width / 5,
      height: MediaQuery.of(context).size.width / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.width / 8,
            // color: Colors.red,
            child: Icon(Icons.filter_sharp),
          ),
          Container(
            // color: Colors.amber,
            // padding: EdgeInsets.symmetric(
            //   horizontal: 3,
            // ),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontWeight: FontWeight.w500,
                      color: tertiaryColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
