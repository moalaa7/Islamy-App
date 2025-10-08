import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class SuraContentItem2 extends StatelessWidget {
  String content;

  SuraContentItem2({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.01),
      child: Text(
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        content,
        style: AppStyle.bold20primary,
      ),
    );
  }
}
