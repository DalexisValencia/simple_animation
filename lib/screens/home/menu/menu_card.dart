import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';
import 'package:flutter_application_1/models/deals.dart';
import 'package:animations/animations.dart';
import 'package:flutter_application_1/screens/details/details.dart';

class OpenContainerMenuCard extends StatelessWidget {
  final Deal deal;
  OpenContainerMenuCard({
    this.deal,
  });
  @override
  Widget build(BuildContext context) {
    // return MenuCard(
    //   deal: deal,
    //   openContainer: () {},
    // );
    return OpenContainer(
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      transitionDuration: Duration(
        milliseconds: 500,
      ),
      openElevation: 0,
      closedBuilder: (_, openContainer) {
        return Container(
          padding: EdgeInsets.only(
            bottom: 1.5,
          ),
          child: MenuCard(
            deal: deal,
            openContainer: openContainer,
          ),
        );
      },
      openBuilder: (_, closeContainer) {
        return DetailsPage(
          goBack: closeContainer,
        );
      },
    );
  }
}

class MenuCard extends StatelessWidget {
  final Deal deal;
  final Function openContainer;
  MenuCard({
    this.deal,
    this.openContainer,
  });
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 19.2 / 19.2,
      child: Container(
        margin: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.03,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: fifthColor,
            width: 0.4,
          ),
          borderRadius: BorderRadius.circular(2.5),
        ),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          splashColor: Colors.red,
          onPressed: openContainer,
          child: SizedBox.expand(
            child: Card(
              borderOnForeground: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
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
