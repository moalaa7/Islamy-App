import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/radio/radio_item.dart';
import 'package:islamy_app/UI/home/tabs/radio/recitersItem.dart';

class RadioPage extends StatelessWidget {
  bool isRadio;

  RadioPage({super.key, required this.isRadio});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.01),
        separatorBuilder: (context, index) => SizedBox(
          height: height * 0.02,
        ),
        itemBuilder: (context, index) {
          return isRadio ? RadioItem() : RecitersItem();
        },
        itemCount: 20,
      ),
    );
  }
}
