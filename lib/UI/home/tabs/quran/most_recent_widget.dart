import 'package:flutter/cupertino.dart';
import 'package:islamy_app/UI/home/tabs/quran/quran_resource.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';
import 'package:islamy_app/Utils/shared_prefs.dart';
import 'package:islamy_app/provider/most_recent_provider.dart';
import 'package:provider/provider.dart';

class MostRecentWidget extends StatefulWidget {
  MostRecentWidget({super.key});

  @override
  State<MostRecentWidget> createState() => _MostRecentWidgetState();
}

class _MostRecentWidgetState extends State<MostRecentWidget> {
  late MostRecentProvider mostRecentProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mostRecentProvider.getMostRecentSuraList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    mostRecentProvider = Provider.of<MostRecentProvider>(context);
    return Visibility(
      visible: mostRecentProvider.mostRecentList.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Most Recently ',
            style: AppStyle.bold16white,
          ),
          Container(
            height: height * 0.16,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: mostRecentProvider.mostRecentList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(width * 0.02),
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            QuranResources.englishQuranSurahs[
                                mostRecentProvider.mostRecentList[index]],
                            style: AppStyle.bold24black,
                          ),
                          Text(
                            QuranResources.arabicAuranSuras[
                                mostRecentProvider.mostRecentList[index]],
                            style: AppStyle.bold24black,
                          ),
                          Text(
                            '${QuranResources.AyaNumber[mostRecentProvider.mostRecentList[index]]} Verses',
                            style: AppStyle.bold14black,
                          )
                        ],
                      ),
                      Image.asset(AppAsset.recentImg)
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: width * 0.02,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
