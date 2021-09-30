// FLUTTER
import 'package:flutter/material.dart';

class AppTheme {

  final String id;
  final String label;
  final ThemeData data;
  final String description;

  AppTheme({
    this.description,
    @required this.id,
    @required this.data,
    @required this.label,
  }): assert(id != null),
      assert(data != null),
      assert(label != null);
}