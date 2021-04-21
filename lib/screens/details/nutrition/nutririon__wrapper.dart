import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/details/nutrition/nutrition__card.dart';

class NutritionWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
            ),
            child: Text(
              "Nutrition",
              style: Theme.of(context).textTheme.button.copyWith(
                    fontSize: MediaQuery.of(context).size.height * 0.0219,
                  ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [0, 1, 2, 3]
                  .asMap()
                  .entries
                  .map((e) => NutritionCard())
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
