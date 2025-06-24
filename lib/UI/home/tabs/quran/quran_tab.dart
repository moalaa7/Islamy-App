import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details/sura_details.dart';
import 'package:islamy_app/UI/home/tabs/quran/sura_items.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

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
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Most Recently ',
            style: AppStyle.bold16white,
          ),
          Container(
            height: height * 0.16,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 114,
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
                            'Al-Anbiya',
                            style: AppStyle.bold24black,
                          ),
                          Text(
                            'الأنبياء',
                            style: AppStyle.bold24black,
                          ),
                          Text(
                            '112 Verses  ',
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
                            Navigator.of(context).pushNamed(
                                SuraDetailsScreen.routeName,
                                arguments: index);
                          },
                          child: SuraItem(
                            index: index,
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
                  itemCount: 114))
        ],
      ),
    );
  }
}
