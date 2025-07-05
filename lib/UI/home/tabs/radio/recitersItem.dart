import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class RecitersItem extends StatefulWidget {
  RecitersItem({
    super.key,
  });

  @override
  State<RecitersItem> createState() => _RecitersItemState();
}

class _RecitersItemState extends State<RecitersItem> {
  bool isMuted = false;
  bool isPaused = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(top: height * .01),
      height: height * 0.18,
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppAsset.radioMosk,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Column(
            children: [
              Text(
                ' Ibrahim Al-Akdar',
                style: AppStyle.bold24black,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (isPaused) {
                          isPaused = false;
                        } else {
                          isPaused = true;
                        }
                        setState(() {});
                      },
                      child: isPaused
                          ? ImageIcon(
                              AssetImage(AppAsset.Pause),
                              size: 44,
                            )
                          : ImageIcon(
                              AssetImage(AppAsset.play),
                              size: 44,
                            ),
                    ),

                    // SizedBox(
                    //   width: width * 0.03,
                    // ),
                    InkWell(
                      onTap: () {
                        if (isMuted) {
                          isMuted = false;
                        } else {
                          isMuted = true;
                        }
                        setState(() {});
                      },
                      child: isMuted
                          ? Icon(
                              Icons.volume_off,
                              size: 30,
                            )
                          : Icon(
                              Icons.volume_up,
                              size: 30,
                            ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
