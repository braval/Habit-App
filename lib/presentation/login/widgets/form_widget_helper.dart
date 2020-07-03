import 'package:flutter/material.dart';
import '../../constants.dart' as constants;

InputDecoration customFormDecoration(String field) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    fillColor: Colors.white,
    hintText: field,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
  );
}

const TextStyle kFormButtonTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);

const TextStyle kFormButtonUnderlinedTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.black45,
  fontSize: 15.0,
  decoration: TextDecoration.underline,
  fontWeight: FontWeight.w500,
);

ShapeBorder kLoginButtonShape = RoundedRectangleBorder(
  side: const BorderSide(
    color: Colors.transparent,
  ),
  borderRadius: BorderRadius.circular(50),
);
