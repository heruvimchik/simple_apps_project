import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStyles {
  static const textStyle = TextStyle(
    fontSize: 16,
    color: Color(0xFF212529),
  );

  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(const Color(0xFF01B4E4)),
    textStyle: MaterialStateProperty.all(
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
  );

  static const InputDecoration textFieldDecorator = InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
    fillColor: Colors.red,
    focusColor: Colors.red,
    hoverColor: Colors.red,
  );

  static InputDecoration getInputDecoration({
    required String hintText,
    required String labelText,
    required Widget suffixIcon,
  }) {
    return new InputDecoration(
      hintText: hintText,
      suffixIcon: suffixIcon,
      labelText: labelText,
      counterText: '',
      hintStyle: Get.theme.textTheme.bodyText2?.merge(
        TextStyle(color: Get.theme.focusColor),
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.hintColor.withOpacity(0.2))),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.hintColor)),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: Get.theme.textTheme.bodyText2?.merge(
        TextStyle(color: Get.theme.hintColor),
      ),
    );
  }
}
