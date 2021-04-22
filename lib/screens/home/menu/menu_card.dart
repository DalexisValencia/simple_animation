import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/deals.dart';

class MenuCard extends StatelessWidget {
  final Deal deal;
  MenuCard({
    this.deal,
  });
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
                        color: Colors.blue[400].withOpacity(0.7),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
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
