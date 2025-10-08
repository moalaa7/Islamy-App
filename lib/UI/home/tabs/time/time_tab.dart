import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/time/pray_item.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';
import 'package:islamy_app/Utils/date_formater.dart';
import 'package:islamy_app/api/api_manger.dart';
import 'package:islamy_app/api/response/pray_time_response.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: height * 0.01, horizontal: width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FutureBuilder(
            future: ApiManger().getPrayTime(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primaryColor,
                  ),
                );
              }
              if (snapshot.hasError) {
                return const Center(
                    child: Text(
                  'Error',
                  style: TextStyle(color: AppColor.whiteColor),
                ));
              }
              if (!snapshot.hasData) {
                return const Center(
                    child: Text(
                  'No data avilable',
                  style: TextStyle(color: AppColor.whiteColor),
                ));
              }
              final PrayTimeResponse data = snapshot.data!;
              Map<String, dynamic> prayTime =
                  TimeFormater.sortPrayTime(data.data!.timings!.toJson());

              return Container(
                height: height * 0.35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAsset.timeContainer,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          DateFormater.formatDateGregorian(
                              data.data?.date?.gregorian ?? Gregorian()),
                          style: AppStyle.bold16white,
                        ),
                        Column(
                          children: [
                            Text(
                              'pray time',
                              style: AppStyle.bold24black,
                            ),
                            Text(
                              data.data?.date?.gregorian?.weekday?.en ?? '',
                              style: AppStyle.bold16black,
                            ),
                          ],
                        ),
                        Text(
                          DateFormater.formatDateHijri(
                              data.data?.date!.hijri ?? Hijri()),
                          style: AppStyle.bold16white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: height * 0.2,
                      child: CarouselSlider.builder(
                        itemBuilder: (context, index, realIndex) {
                          return PrayItem(
                              prayName: prayTime.keys.elementAt(index),
                              time: TimeFormater.to12hour(
                                  prayTime.values.elementAt(index)));
                        },
                        itemCount: 5,
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          viewportFraction: .25,
                          enlargeFactor: 0.25,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          // Text(
          //   'Azkar',
          //   style: AppStyle.bold20white,
          // ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Image.asset(
          //         AppAsset.eveningAzkar,
          //       ),
          //     ),
          //     SizedBox(
          //       width: width * 0.02,
          //     ),
          //     Expanded(child: Image.asset(AppAsset.morningAzkar)),
          //   ],
          // )
        ],
      ),
    );
  }
}
