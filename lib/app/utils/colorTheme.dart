import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/utils/common.colors.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

const textFieldGray = Color.fromARGB(255, 241, 241, 241);
const backGround = Color.fromARGB(255, 253, 253, 253);
const verdeBosta = Color(0xFF008f38);
const iconGray = Color.fromARGB(255, 121, 121, 121);
const grayBackground = Color.fromARGB(255, 239, 239, 239);
const cleareGrayBrackground = Color.fromARGB(255, 245, 245, 245);
const cardGray = Colors.black38;
final textonormal = TextStyle(fontSize: defaultFontSize, color: Colors.black54);
final appbartext = TextStyle(
    color: Colors.black54, fontSize: defaultFontSize, fontFamily: 'OpenSans');
// const background2 = Colors.grey.shade300;

ThemeData mainTheme =
    ThemeData(primaryColor: verdeBosta, primarySwatch: verdeBostaMaterialColor)
        .copyWith(
            backgroundColor: verdeBosta,
            scaffoldBackgroundColor: verdeBosta,
            highlightColor: textFieldGray,
            canvasColor: Colors.white,
            primaryTextTheme: TextTheme(
                    // displaySmall: TextStyle(fontSize: 30),
                    // displayMedium: TextStyle(fontSize: 35),
                    // displayLarge: TextStyle(fontSize: 45),
                    )
                .apply(
              displayColor: Colors.black54,
              bodyColor: Colors.black54,
            ),
            textTheme: TextTheme(
                    // displaySmall: TextStyle(fontSize: 30),
                    // displayMedium: TextStyle(fontSize: 35),
                    // displayLarge: TextStyle(fontSize: 45),
                    )
                .apply(
              displayColor: Colors.black54,
              bodyColor: Colors.black54,
            )
            // elevatedButtonTheme: ElevatedButtonThemeData()
            );
    // colorScheme: ColorScheme.fromSwatch(
    //     primarySwatch: getMaterialColorFromColor(verdeBosta)));
    // primaryColor: verdeBosta,
    // canvasColor: backGround,
    // iconTheme: IconThemeData(color: iconGray, size: mediumIconSize),
    // backgroundColor: verdeBosta,
    // textTheme:
    //     TextTheme(displaySmall: TextStyle(fontSize: 30, color: Colors.black54)),
    // // backgroundColor: backGround,
    // // accentColor: Colors.white,
    // // cardColor: textFieldGray,
    // // errorColor: Colors.red.shade400),
    //     style: ButtonStyle(
    //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //             RoundedRectangleBorder(
    //                 side: BorderSide(color: Colors.transparent))),
    //         foregroundColor: MaterialStateProperty.all<Color>(iconGray),
    //         backgroundColor: MaterialStateProperty.all<Color>(verdeBosta))),
    // inputDecorationTheme: InputDecorationTheme(
    //     filled: true,
    //     border: OutlineInputBorder(borderSide: BorderSide(color: verdeBosta)),
    //     focusColor: backGround,
    //     fillColor: backGround,
    //     iconColor: iconGray,
    //     focusedBorder:
    //         OutlineInputBorder(borderSide: BorderSide(color: cardGray))));
