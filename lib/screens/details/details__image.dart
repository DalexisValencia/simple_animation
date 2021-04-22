import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class DetailsImage extends StatelessWidget {
  final Function goBack;
  DetailsImage({
    Key key,
    this.goBack,
  }) : super(key: key);
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
            child: MaterialButton(
              onPressed: goBack,
              elevation: 0,
              minWidth: MediaQuery.of(context).size.width * 0.14,
              splashColor: Colors.red,
              shape: CircleBorder(),
              padding: EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
