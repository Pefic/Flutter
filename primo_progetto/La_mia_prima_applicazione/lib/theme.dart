import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';


  const COLORE = Color.fromRGBO(8, 151, 197, 1);



  class TemaMiaPrimaApp{

    static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.blue,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
    );

    static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.blue,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
    );

      static ThemeData getTheme(){       //istanza un oggetto di tipo themedata e poi va richiamata la classe e il metodo
      return ThemeData(
      brightness: Brightness.dark,
      primaryColor: COLORE,
      fontFamily: 'Robot',
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
        headline2: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
        headline3: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
        headline4: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
        headline5: TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic),
        bodyText1: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: COLORE),
        bodyText2: TextStyle(fontSize: 12.0, color:COLORE),
      )
      );
  }
  }

