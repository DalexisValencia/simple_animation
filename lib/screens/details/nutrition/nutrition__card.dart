import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class NutritionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: fifthColor,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      margin: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.01,
      ),
      width: MediaQuery.of(context).size.width / 4.9,
      height: MediaQuery.of(context).size.width / 4.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              '435kj',
              style: Theme.of(context).textTheme.button,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'Energy',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ],
      ),
    );
  }
}
