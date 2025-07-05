import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/radio/radio_page.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class RadioTab extends StatefulWidget {
  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool radio_click = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    radio_click = true;
                    setState(() {});
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(radio_click
                          ? AppColor.primaryColor
                          : AppColor.blackbgColor)),
                  child: radio_click
                      ? Text('Radio', style: AppStyle.bold16black)
                      : Text('Radio', style: AppStyle.bold16white)),
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    radio_click = false;
                    setState(() {});
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(radio_click
                          ? AppColor.blackbgColor
                          : AppColor.primaryColor)),
                  child: radio_click
                      ? Text('Reciters', style: AppStyle.bold16white)
                      : Text('Reciters', style: AppStyle.bold16black)),
            ),
          ],
        ),
        RadioPage(
          isRadio: radio_click,
        )
      ],
    );
  }
}
