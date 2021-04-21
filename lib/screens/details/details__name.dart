import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class DetailsName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            'Navel Orange',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                ),
          ),
        ),
        Text(
          "\$2.99/kg",
          style: Theme.of(context).textTheme.button.copyWith(
                fontSize: MediaQuery.of(context).size.height * 0.027,
                color: secondaryColor,
              ),
        ),
      ],
    );
  }
}
