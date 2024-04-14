import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/components/ThemeIconButton.dart';

class HeroSection extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.red,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /* title */
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get 32% Promo',
                  style: GoogleFonts.ultra(
                    fontSize: 24,
                  ),
                  softWrap: true,
                ),
                ThemeIconButton()
              ],
            ),

            /* image */
            Image.asset(
              'assets/images/chicken-leg.png',
              fit: BoxFit.contain,
              height: 100,
            )
          ],
        ));
  }
}
