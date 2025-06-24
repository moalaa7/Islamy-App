import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/UI/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islamy_app/UI/home/tabs/quran/quran_tab.dart';
import 'package:islamy_app/UI/home/tabs/radio/radio_tab.dart';
import 'package:islamy_app/UI/home/tabs/sebha/sebha_tab.dart';
import 'package:islamy_app/UI/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> backGroundImgs = [
    AppAsset.quranbg,
    AppAsset.hadethbg,
    AppAsset.sebhabg,
    AppAsset.radiobg,
    AppAsset.timebg
  ];

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            backGroundImgs[selectedIndex],
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: AppColor.primaryColor),
              child: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (index) {
                    selectedIndex = index;
                    setState(() {});
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: builtBottomNavBar(
                            index: 0, imgName: AppAsset.iconQuran),
                        label: 'Quran'),
                    BottomNavigationBarItem(
                        icon: builtBottomNavBar(
                            index: 1, imgName: AppAsset.iconHades),
                        label: 'Hadeth'),
                    BottomNavigationBarItem(
                        icon: builtBottomNavBar(
                            index: 2, imgName: AppAsset.iconSebha),
                        label: 'Sebha'),
                    BottomNavigationBarItem(
                        icon: builtBottomNavBar(
                            index: 3, imgName: AppAsset.iconRadio),
                        label: 'Radio'),
                    BottomNavigationBarItem(
                        icon: builtBottomNavBar(
                            index: 4, imgName: AppAsset.iconTime),
                        label: 'Time'),
                  ]),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AppAsset.logo),
                Expanded(child: tabs[selectedIndex])
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget builtBottomNavBar({required int index, required String imgName}) {
    return selectedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              color: AppColor.blackbgColor,
            ),
            child: ImageIcon(AssetImage(imgName)))
        : ImageIcon(AssetImage(imgName));
  }
}
