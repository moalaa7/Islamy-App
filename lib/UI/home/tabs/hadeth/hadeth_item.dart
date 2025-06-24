import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';
import 'package:islamy_app/model/hadeth.dart';

class HadethItem extends StatefulWidget {
  int index;

  HadethItem({super.key, required this.index});

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  Hadeth? hadeth;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadethFile(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * .07),
      // color: Colors.amber,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAsset.hadethCard), fit: BoxFit.fill)),
      child: hadeth == null
          ? Center(
              child: CircularProgressIndicator(
                color: AppColor.blackColor,
              ),
            )
          : Column(
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  hadeth?.title ?? '',
                  style: AppStyle.bold24black,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      textDirection: TextDirection.rtl,
                      hadeth?.content ?? '',
                      style: AppStyle.bold16black,
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  void loadHadethFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/Hadeeth/h$index.txt');
    String title = fileContent.substring(0, fileContent.indexOf('\n'));
    String content = fileContent.substring(fileContent.indexOf('\n') + 1);
    // List<String> lines = fileContent.split('\n')
    // ;
    // for (int i = 0; i < lines.length; i++) {
    //   String title = lines[0];

    //   lines.removeAt(0);
    //   String content = lines.toString();

    //   /// can use Substring to get title & content
    // }
    hadeth = Hadeth(title: title, content: content);
    setState(() {});
  }
}
