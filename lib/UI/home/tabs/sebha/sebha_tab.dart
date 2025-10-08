import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/UI/home/tabs/sebha/draw_sebha.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  int index = 0;

  List<String> tsbehWord = [
    'سبحان الله',
    'الله اكبر',
    "لا اله الا الله",
    "الحمد لله",
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: AppStyle.bold36white,
          ),
          Image.asset(
            AppAsset.sebhaHeader,
          ),
          InkWell(
             
            overlayColor: MaterialStatePropertyAll(Colors.transparent)  ,
            onTap: increment,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: angle,
                  child: Image.asset(
                    AppAsset.sebhaBody,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tsbehWord[index],
                      style: AppStyle.bold36white,
                    ),
                    Text(
                      '$counter',
                      style: AppStyle.bold36white,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void increment() {
    if (counter == 33 && index < tsbehWord.length - 1) {
      counter = 0;

      index += 1;
    } else if (index >= tsbehWord.length || index < 0 || counter > 32) {
      index = 0;
      counter = 0;
    }
    counter++;
    angle += 1;
    setState(() {});
  }
}
