import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details/sura_details.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details2/sura_details2.dart';
import 'package:islamy_app/UI/home/tabs/quran/most_recent_widget.dart';
import 'package:islamy_app/UI/home/tabs/quran/quran_resource.dart';
import 'package:islamy_app/UI/home/tabs/quran/sura_items.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';
import 'package:islamy_app/Utils/shared_prefs.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {

   List<int> filterList = List.generate(
    114,
    (index) => index,
  );
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            
            cursorColor: AppColor.primaryColor,
            style: AppStyle.bold16white,
            decoration: InputDecoration(
              hintText: 'Sura Name',
              hintStyle: AppStyle.bold16white,
              prefixIcon: Image.asset(AppAsset.searchIcon),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:
                      BorderSide(width: 2, color: AppColor.primaryColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:
                      BorderSide(width: 2, color: AppColor.primaryColor)),
            ),
              onChanged: (newText) {
              searchByNewText(newText);
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
         MostRecentWidget(),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            'Suras List',
            style: AppStyle.bold16white,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      child: InkWell(
                          onTap: () {
                              saveSura(filterList[index]);
                            Navigator.of(context).pushNamed(
                                SuraDetailsScreen2.routeName,
                                arguments:  filterList[index]);
                          },
                          child: SuraItem(
                            index: filterList[index],
                          )),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColor.whiteColor,
                      thickness: 1,
                      indent: width * 0.1,
                      endIndent: width * 0.1,
                    );
                  },
                  itemCount: filterList.length))
        ],
      ),
    );
  }

  void searchByNewText(String newText) {
    List<int> filterSearchList = [];
    for (int i = 0; i < QuranResources.englishQuranSurahs .length; i++) {
      //todo: toLowerCase()  => Saba  => saba
      //todo: toUpperCase()  => Saba  => SABA  , saba => SABA
      if (QuranResources.englishQuranSurahs[i]
          .toLowerCase()
          .contains(newText.toLowerCase())) {
        filterSearchList.add(i);
      }
      if (QuranResources.arabicAuranSuras [i].contains(newText)) {
        filterSearchList.add(i);
      }
    }
    filterList = filterSearchList;
    setState(() {});
  }
}
