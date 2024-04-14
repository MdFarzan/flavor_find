import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/AppRoutes.dart';
import 'package:helloworld/Colors.dart';

class ButtonAlt extends StatelessWidget {
  String label = 'Button label';
  Function callback = () {};

  ButtonAlt(this.label, @required callback) {
    print(callback);
    this.callback = callback;
  }

  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(42),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: double.infinity,

      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      duration: Duration(seconds: 1),
      child: InkWell(
          onTap: () {
            print('$label button called');
            // this.callback();
            Navigator.pushNamed(context, AppRoutes.HomePageRoute);
          },
          child: Ink(
              child: Text(label,
                  style: GoogleFonts.outfit(
                    fontSize: 25,
                    color: ThemeColors.primaryColor,
                  )))),
    );
  }
}
