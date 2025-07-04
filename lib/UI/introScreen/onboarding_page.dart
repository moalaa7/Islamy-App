import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_app/UI/home/home_screen.dart';
import 'package:islamy_app/Utils/app_assets.dart';
import 'package:islamy_app/Utils/app_color.dart';
import 'package:islamy_app/Utils/app_style.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  static const String routeName = 'onboarding_page';

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColor.blackColor,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Container(
            child: Image.asset(AppAsset.logo),
          ),
        ),
      ),

      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),

      pages: [
        PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: AppStyle.bold24primary,
              bodyTextStyle: AppStyle.bold16primary,
              pageMargin: EdgeInsets.only(top: height * 0.3)),
          title: "Welcome To Islami App",
          body: "",
          image: Image.asset(
            AppAsset.onboarding1,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: AppStyle.bold24primary,
              bodyTextStyle: AppStyle.bold16primary,
              pageMargin: EdgeInsets.only(top: height * 0.3)),
          title: "Welcome To Islami App",
          body: "We Are Very Excited To Have You In Our Community",
          image: Image.asset(
            AppAsset.onboarding2,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: AppStyle.bold24primary,
              bodyTextStyle: AppStyle.bold16primary,
              pageMargin: EdgeInsets.only(top: height * 0.3)),
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: Image.asset(
            AppAsset.onboarding3,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: AppStyle.bold24primary,
              bodyTextStyle: AppStyle.bold16primary,
              pageMargin: EdgeInsets.only(top: height * 0.3)),
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: Image.asset(
            AppAsset.onboarding4,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              titleTextStyle: AppStyle.bold24primary,
              bodyTextStyle: AppStyle.bold16primary,
              pageMargin: EdgeInsets.only(top: height * 0.3)),
          title: "Holy Quran Radio",
          body:
              "You can listen to the Holy Quran Radio through the application for free and easily",
          image: Image.asset(
            AppAsset.onboarding5,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,

      back: const Text('Back',
          style: TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.w600)),
      skip: const Text('Skip',
          style: TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.w600)),
      next: const Text('Next',
          style: TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.w600)),
      done: const Text('Finish',
          style: TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      // controlsMargin: const EdgeInsets.all(16),
      // controlsPadding: kIsWeb
      //     ? const EdgeInsets.all(12.0)
      //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: AppColor.primaryColor,
        color: Color(0xff707070),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: AppColor.blackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
