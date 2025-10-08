import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/tabs/radio/radio_item.dart';
import 'package:islamy_app/UI/home/tabs/radio/recitersItem.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/api/api_manger.dart';
import 'package:islamy_app/model/radio_receiter_model.dart';

class RadioPage extends StatelessWidget {
  bool isRadio;

  RadioPage({super.key, required this.isRadio});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: FutureBuilder<RadioReceiterModel>(
        future: ApiManger().getAllData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColor.primaryColor,
              ),
            );
          }
          if (snapshot.hasError) {
            return Center(
                child: Text(
              'Error',
              style: TextStyle(color: AppColor.whiteColor),
            ));
          }
          if (!snapshot.hasData) {
            return Center(
                child: Text(
              'No data avilable',
              style: TextStyle(color: AppColor.whiteColor),
            ));
          }
          final RadioReceiterModel data = snapshot.data!;
          final itemCount = isRadio
              ? data.radioResponseModel.radios?.length ?? 0
              : data.receitersResponseModel.reciters?.length ?? 0;
          return ListView.separated(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.02, vertical: height * 0.01),
            separatorBuilder: (context, index) => SizedBox(
              height: height * 0.02,
            ),
            itemBuilder: (context, index) {
              return isRadio
                  ? RadioItem(
                      name: data.radioResponseModel.radios?[index].name ?? '',
                      audioUrl:
                          data.radioResponseModel.radios?[index].url ?? '',
                    )
                  : RecitersItem(
                      name: data.receitersResponseModel.reciters?[index].name ??
                          '',
                      audioUrl:
                          '${data.receitersResponseModel.reciters?[index].moshaf?[0].server}006.mp3',
                    );
            },
            itemCount: itemCount,
          );
        },
      ),

      // child: ListView.separated(
      //   padding: EdgeInsets.symmetric(
      //       horizontal: width * 0.02, vertical: height * 0.01),
      //   separatorBuilder: (context, index) => SizedBox(
      //     height: height * 0.02,
      //   ),
      //   itemBuilder: (context, index) {
      //     return isRadio ? RadioItem() : RecitersItem();
      //   },
      //   itemCount: 20,
      // ),
    );
  }
}
