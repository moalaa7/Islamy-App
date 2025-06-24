import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/quran/quran_resource.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_style.dart';

class SuraItem extends StatelessWidget {
  int index;

  SuraItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAsset.suracountShape),
            Text(
              ' ${index + 1}',
              style: AppStyle.bold14white,
            )
          ],
        ),
        SizedBox(
          width: width * 0.06,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${QuranResources.englishQuranSurahs[index]}',
              style: AppStyle.bold20white,
            ),
            Text(
              '${QuranResources.AyaNumber[index]} Verses  ',
              style: AppStyle.bold14white,
            )
          ],
        ),
        Spacer(),
        Text(
          '${QuranResources.arabicAuranSuras[index]}',
          style: AppStyle.bold20white,
        )
      ],
    );
  }
}
