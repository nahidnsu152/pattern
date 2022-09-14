import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle:
          SystemUiOverlayStyle.dark, //? Statusbar icon color change
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
    // textTheme:
    //             GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
  );
}
