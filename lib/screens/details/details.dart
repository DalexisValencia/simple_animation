import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/screens/details/details__bottom-button.dart';
import 'package:flutter_application_1/screens/details/details__description.dart';
import 'package:flutter_application_1/screens/details/details__image.dart';
import 'package:flutter_application_1/screens/details/details__name.dart';
import 'package:flutter_application_1/screens/details/nutrition/nutririon__wrapper.dart';

class DetailsPage extends StatelessWidget {
  final Function goBack;
  DetailsPage({
    Key key,
    this.goBack,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              constraints: BoxConstraints.expand(),
              height: MediaQuery.of(context).size.height - 100,
              color: Colors.blue[400].withOpacity(0.7),
              child: Stack(
                children: [
                  DetailsImage(
                    goBack: goBack,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width *
                              horizontalPadding,
                          vertical: MediaQuery.of(context).size.width *
                              horizontalPadding,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: primaryColor,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.50,
                        // child: SingleChildScrollView(
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DetailsName(),
                                DetailsDescription(),
                                NutritionWrapper(),
                              ],
                            ),
                            Container(
                              transform: Matrix4.translationValues(
                                  MediaQuery.of(context).size.width * 0.66,
                                  -49,
                                  0),
                              child: MaterialButton(
                                elevation: 0,
                                padding: EdgeInsets.all(15),
                                shape: CircleBorder(),
                                color: secondaryColor,
                                onPressed: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color: primaryColor,
                                ),
                              ),
                            )
                          ],
                        )

                        // ),
                        ),
                  ),
                ],
              ),
            ),
          ),
          DetailsBottomButtom(),
        ],
      ),
    );
  }
}
