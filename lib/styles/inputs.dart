import 'package:flutter/material.dart';

const InputDecorationTheme inputField = InputDecorationTheme(
  contentPadding: EdgeInsets.all(10),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF7F7F7F)),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF7F7F7F)),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent),
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  errorStyle: TextStyle(
    fontSize: 0,
    height: 0,
  ),
);
