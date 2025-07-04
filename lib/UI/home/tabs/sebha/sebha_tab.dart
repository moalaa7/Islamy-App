import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/sebha/draw_sebha.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_style.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

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
    return Column(
      children: [
        Text(
          'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
          style: AppStyle.bold36white,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppAsset.sebha,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tsbehWord[index],
                  style: AppStyle.bold36white,
                ),
                InkWell(
                  onTap: increment,
                  child: Text(
                    '$counter',
                    style: AppStyle.bold36white,
                  ),
                ),
              ],
            )
          ],
        )
      ],
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
    setState(() {});
  }
}
