import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details/sura_content_item.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details2/sura_content_item2.dart';
import 'package:islamy_app/UI/home/tabs/quran/quran_resource.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';
import 'package:islamy_app/provider/most_recent_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen2 extends StatefulWidget {
  static const String routeName = 'sura_details2';

  @override
  State<SuraDetailsScreen2> createState() => _SuraDetailsScreen2State();
}

class _SuraDetailsScreen2State extends State<SuraDetailsScreen2> {
  String suraContent = '';
  late MostRecentProvider mostRecentProvider;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mostRecentProvider.getMostRecentSuraList();
  }

  @override
  Widget build(BuildContext context) {
     mostRecentProvider = Provider.of<MostRecentProvider>(context);

    // var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    int index = ModalRoute.of(context)?.settings.arguments as int;
    if (suraContent.isEmpty) {
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
                    child: suraContent.isEmpty
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColor.primaryColor,
                            ),
                          )
                        : SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.03),
                              child: SuraContentItem2(
                                content: suraContent,
                              ),
                            ),
                          )),
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
    for (int i = 0; i < lines.length; i++) {
      lines[i] += ' {${i + 1}} ';
    }
    suraContent = lines.join();

    Future.delayed(
      Duration(seconds: 1),
      () => setState(() {}),
    );
  }
}
