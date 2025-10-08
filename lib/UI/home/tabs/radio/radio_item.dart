import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';
import 'package:islamy_app/provider/radio_manger_provider.dart';
import 'package:provider/provider.dart';

class RadioItem extends StatefulWidget {
  String name;
  String audioUrl;

  RadioItem({required this.name, required this.audioUrl});

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Consumer<RadioMangerProvider>(
      builder: (context, provider, child) {
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
                (provider.currentPlayingUrl == widget.audioUrl &&
                        provider.isPlaying!)
                    ? AppAsset.Wave
                    : AppAsset.radioMosk,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Text(
                    widget.name,
                    style: AppStyle.bold24black,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            provider.play(widget.audioUrl);
                          },
                          child:
                              (provider.currentPlayingUrl == widget.audioUrl &&
                                      provider.isPlaying!)
                                  ? const ImageIcon(
                                      AssetImage(AppAsset.Pause),
                                      size: 44,
                                    )
                                  : const ImageIcon(
                                      AssetImage(AppAsset.play),
                                      size: 44,
                                    ),
                        ),

                        // SizedBox(
                        //   width: width * 0.03,
                        // ),
                        InkWell(
                          onTap: () {
                            provider.mute(widget.audioUrl,
                                provider.currentVolume == 2 ? 0 : 2);
                          },
                          child:
                              (provider.currentPlayingUrl == widget.audioUrl &&
                                      provider.currentVolume == 0)
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
      },
    );
  }
}
