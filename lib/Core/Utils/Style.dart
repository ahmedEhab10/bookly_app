import 'package:bookly_app/Const.dart';
import 'package:flutter/material.dart';

abstract class Style {
  static const textstyle22 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w600);
  static const textstyle20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: KGtsectrafine,
      color: Colors.white);

  static const textstyle30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.normal, fontFamily: KGtsectrafine);

  static const textstyle30bold = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, fontFamily: KGtsectrafine);

  static const textstyle14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

  static const textstyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static const textstyle18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic);
}
