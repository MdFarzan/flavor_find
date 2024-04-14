import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeIconButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return AnimatedContainer(
        margin: EdgeInsets.only(top: 15),
        duration: Duration(seconds: 1),
        child: InkWell(
            onTap: () => {print('icon button tapped')},
            child: Row(children: [
              Ink(
                child: Text("Reedem",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: 18,
              )
            ])));
  }
}
