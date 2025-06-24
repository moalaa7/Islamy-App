import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details/sura_content_item.dart';
import 'package:islamy_app/UI/home/tabs/quran/quran_resource.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int index = ModalRoute.of(context)?.settings.arguments as int;
    if (verses.isEmpty) {
      loadSuraFile(index);
    }
    return Scaffold(
        backgroundColor: AppColor.blackColor,
        appBar: AppBar(
          title: Text(
            '${QuranResources.englishQuranSurahs[index]}',
            style: AppStyle.bold20primary,
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AppAsset.details,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.009,
                ),
                Text(
                  '${QuranResources.arabicAuranSuras[index]}',
                  style: AppStyle.bold24primary,
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Expanded(
                  child: verses.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(
                            color: AppColor.primaryColor,
                          ),
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            return SuraContentItem(
                              content: verses[index],
                              index: index,
                            )
                                // return Text(
                                //   textDirection: TextDirection.rtl,
                                //   verses[index],
                                //   style: AppStyle.bold20primary,
                                // )
                                ;
                          },
                          itemCount: verses.length,
                        ),
                ),
                Image.asset(AppAsset.mosq)
              ],
            )
          ],
        ));
  }

  void loadSuraFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.split('\n');
    verses = lines;
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() {}),
    );
  }
}
/*
verses.isEmpty
          ? Center(
              child: CircularProgressIndicator(
                color: AppColor.primaryColor,
              ),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  textDirection: TextDirection.rtl,
                  verses[index],
                  style: AppStyle.bold20primary,
                );
              },
              itemCount: verses.length,
            ),
*/
