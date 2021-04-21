import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class DetailsDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Text(
            "Description",
            style: Theme.of(context).textTheme.button.copyWith(
                  fontSize: MediaQuery.of(context).size.height * 0.0219,
                ),
          ),
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Maecenas sollicitudin porta massa, eget feugiat neque gravida at. Vivamus imperdiet, tortor.",
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: MediaQuery.of(context).size.height * 0.0211,
                color: tertiaryColor,
                fontWeight: FontWeight.w300,
              ),
        ),
      ],
    );
  }
}
