import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  HeaderSection({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.caption.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * 0.0219,
              ),
        ),
        MaterialButton(
          minWidth: MediaQuery.of(context).size.width * 0.20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(0),
          // color: Colors.red,
          onPressed: () {},
          child: Text(
            'See more',
            style: Theme.of(context).textTheme.caption.copyWith(
                  decoration: TextDecoration.underline,
                  color: secondaryColor,
                ),
          ),
        ),
      ],
    );
  }
}
