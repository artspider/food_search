import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final foodTheme = ThemeData(
  primarySwatch: MaterialColor(4294725425, {
    50: Color(0xffffeae6),
    100: Color(0xfffed4cd),
    200: Color(0xfffea99a),
    300: Color(0xfffd7e68),
    400: Color(0xfffc5336),
    500: Color(0xfffb2804),
    600: Color(0xffc92003),
    700: Color(0xff971802),
    800: Color(0xff651001),
    900: Color(0xff320801),
  }),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: Color(0xff472212),
    displayColor: Color(0xff472212),
  ),
  brightness: Brightness.light,
  primaryColor: Color(0xfffc5031),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(0xfffed4cd),
  primaryColorDark: Color(0xff971902),
  accentColor: Color(0xfffb2904),
  accentColorBrightness: Brightness.dark,
  canvasColor: Color(0xfffafafa),
  scaffoldBackgroundColor: Color(0xfffff8ef),
  bottomAppBarColor: Color(0xffffffff),
  cardColor: Color(0xffffffff),
  dividerColor: Color(0x1f000000),
  highlightColor: Color(0x66bcbcbc),
  splashColor: Color(0x66c8c8c8),
  selectedRowColor: Color(0xfff5f5f5),
  unselectedWidgetColor: Color(0x8a000000),
  disabledColor: Color(0x61000000),
  buttonColor: Color(0xffe0e0e0),
  toggleableActiveColor: Color(0xffc92103),
  secondaryHeaderColor: Color(0xffffeae6),
  backgroundColor: Color(0xfffeaa9a),
  dialogBackgroundColor: Color(0xffffffff),
  indicatorColor: Color(0xfffb2904),
  hintColor: Color(0x8a000000),
  errorColor: Color(0xffd32f2f),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xfffc4f31),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Color(0xfffc5031),
      primaryVariant: Color(0xff971902),
      secondary: Color(0xfffb2904),
      secondaryVariant: Color(0xff971902),
      surface: Color(0xffffffff),
      background: Color(0xfffeaa9a),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
);