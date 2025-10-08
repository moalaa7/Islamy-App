import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class PrayItem extends StatelessWidget {
  String prayName;
  String time;
  PrayItem({
    super.key,
    required this.prayName,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.25,
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [AppColor.darkPrimaryColor, AppColor.blackbgColor])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            prayName,
            style: AppStyle.bold16white,
          ),
          Text(
            time,
            style: AppStyle.bold20white,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
