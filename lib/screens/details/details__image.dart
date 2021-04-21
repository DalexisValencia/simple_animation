import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class DetailsImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red[100],
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).padding.top +
                (MediaQuery.of(context).size.width * horizontalPadding),
            left: (MediaQuery.of(context).size.width * horizontalPadding),
            child: Icon(Icons.arrow_back_ios),
          )
        ],
      ),
    );
  }
}
