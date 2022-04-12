import 'dart:math';

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

const COLORE = Color.fromRGBO(0, 151, 197, 1.0);

class TemaMiaPrimaApp {

  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.black,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.black,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  static ThemeData getTheme(){
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: ColorUtils.generateMaterialColor(COLORE),
      fontFamily: 'Robot',
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.black),
        headline2: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
        headline3: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal),
        headline4: TextStyle(fontSize: 12.0, fontFamily: "Hind"),
        headline5: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: COLORE),
        bodyText2: TextStyle(fontSize: 12.0, color: Colors.black),
      )
    );
  }
}

class ColorUtils {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}