import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class DetailsBottomButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.03,
        horizontal: MediaQuery.of(context).size.width * horizontalPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.40,
            margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: fifthColor,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  elevation: 0,
                  minWidth: MediaQuery.of(context).size.width * 0.07,
                  padding: EdgeInsets.all(0),
                  shape: CircleBorder(),
                  color: fourthColor,
                  onPressed: () {},
                  child: Icon(
                    Icons.remove,
                    size: MediaQuery.of(context).size.width * 0.038,
                    color: primaryColor,
                  ),
                ),
                Container(
                  child: FittedBox(
                    child: Text(
                      "1 Kg",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: tertiaryColor,
                          ),
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                MaterialButton(
                  elevation: 0,
                  minWidth: MediaQuery.of(context).size.width * 0.07,
                  padding: EdgeInsets.all(0),
                  shape: CircleBorder(),
                  color: fourthColor,
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    size: MediaQuery.of(context).size.width * 0.038,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MaterialButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 14,
              ),
              minWidth: MediaQuery.of(context).size.width * 0.40,
              color: secondaryColor,
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: primaryColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
