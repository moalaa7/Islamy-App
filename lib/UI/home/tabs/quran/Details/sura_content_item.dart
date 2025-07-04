import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class SuraContentItem extends StatelessWidget {
  String content;
  int index;

  SuraContentItem({super.key, required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.04, vertical: height * 0.009),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColor.primaryColor,
            width: 2,
          )),
      child: Text(
        textDirection: TextDirection.rtl,
        ' $content [${index + 1}] ',
        style: AppStyle.bold20primary,
      ),
    );
  }
}
