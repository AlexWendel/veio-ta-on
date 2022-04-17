import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class InputNormal extends GetResponsiveWidget {
  final String inputText;
  final bool obscure;

  InputNormal({
    required this.inputText,
    required this.obscure,
  });
  @override
  Widget build(
    BuildContext context,
  ) {
    return Wrap(runSpacing: 15, children: [
      // susCardInput,
      TextFormField(
        // focusNode: passwordFocusNode,
        style: TextStyle(color: Colors.black87),
        obscureText: obscure,
        textInputAction: TextInputAction.done,
        // controller: passwordController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Get.theme.primaryColor)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          hintText: inputText,
          hintStyle:
              TextStyle(fontSize: defaultFontSize / context.textScaleFactor),
        ),
      )
    ]);
  }
}
