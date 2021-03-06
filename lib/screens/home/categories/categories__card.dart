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
      // color: Colors.red,
      width: MediaQuery.of(context).size.width / 5.4,
      height: MediaQuery.of(context).size.width / 5.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.width / 8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                  category.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            // child: Icon(Icons.filter_sharp),
          ),
          Container(
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
