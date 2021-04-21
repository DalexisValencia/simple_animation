import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/lists/menu.dart';
import 'package:flutter_application_1/models/deals.dart';
import 'package:flutter_application_1/screens/common/header.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: freshDeals.asMap().entries.map((e) {
                  return MenuCard(
                    deal: freshDeals[e.key],
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

class MenuCard extends StatelessWidget {
  final Deal deal;
  MenuCard({this.deal});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 19 / 19,
      child: Container(
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.03,
        ),
        child: MaterialButton(
          color: Colors.amber,
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          splashColor: Colors.red,
          onPressed: () {},
          child: SizedBox.expand(
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue[400],
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              deal.name,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "\$${deal.price}",
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
