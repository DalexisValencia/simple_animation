import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contansts/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: secondaryColor,
              valueColor: new AlwaysStoppedAnimation<Color>(tertiaryColor),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Cargando..",
              style: Theme.of(context).textTheme.button.copyWith(
                    color: secondaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
