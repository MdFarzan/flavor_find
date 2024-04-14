import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/AppRoutes.dart';
import 'package:helloworld/Colors.dart';
import 'package:helloworld/Constants.dart';
import 'package:helloworld/components/ButtonAlt.dart';

class IntroPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.primaryColor,
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),

                /* App title */
                Text(Constants.APP_NAME,
                    style: GoogleFonts.ultra(
                        fontSize: 42, color: ThemeColors.secondaryColor)),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                    child: Image.asset('assets/images/food_table.png')),

                /* title */
                Text("THE TASTE OF JAPANESE FOOD",
                    style: GoogleFonts.ultra(
                        fontSize: 38, color: Colors.white, height: 1.2)),
                SizedBox(height: 20),

                /* description */
                Text(
                    'Feel the taste of the most popular Japanese food from anywhere and anytime',
                    style: GoogleFonts.outfit(
                        fontSize: 18, color: Colors.white, height: 1.3)),
                SizedBox(height: 10),
                ButtonAlt(
                    "Get Started",
                    (context) =>
                        Navigator.pushNamed(context, AppRoutes.HomePageRoute))
              ],
            )));
  }
}
