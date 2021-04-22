import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/lists/menu.dart';
import 'package:flutter_application_1/screens/common/header.dart';
import 'package:flutter_application_1/screens/home/menu/menu_card.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.28,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * horizontalPadding,
            ),
            child: HeaderSection(
              title: 'Fresh Deals',
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * horizontalPadding,
              ),
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.01,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: freshDeals.asMap().entries.map((e) {
                  return OpenContainerMenuCard(
                    deal: e.value,
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
