import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/Colors.dart';
import 'package:helloworld/Constants.dart';
import 'package:helloworld/components/AppDrawer.dart';
import 'package:helloworld/components/HeroSection.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.APP_NAME),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.outfit(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: ThemeColors.primaryColor,
        ),
      ),
      body: Column(children: [
        // sections
        HeroSection(),
      ]),
      drawer: AppDrawer(),
    );
  }
}
