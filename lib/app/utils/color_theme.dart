import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/utils/common.colors.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

const textFieldGray = Color.fromARGB(255, 241, 241, 241);
const backGroundCard = Color(0xffF2F2F2);
const backCard = Color(0xffC4C4C4);
const backGround = Color.fromARGB(255, 253, 253, 253);
const verdeBosta = Color(0xFF212021);
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
            backgroundColor: Colors.white,
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
            textTheme: TextTheme().apply(
              displayColor: Colors.black54,
              bodyColor: Colors.black54,
            ));
