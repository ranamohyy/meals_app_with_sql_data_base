import 'package:flutter/material.dart';
import 'package:meals_app/assets/app_assets.dart';
import 'package:meals_app/assets/app_colors.dart';
import 'package:meals_app/assets/app_styles.dart';
import 'package:meals_app/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int yourActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppAssets.backGround,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
                padding: const EdgeInsets.all(32),
                height: 400,
                width: 311,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.onBoardingBGColor.withOpacity(0.9),
                ),
                child: Column(children: [
                  Text(
                    Utils.getTextOnBoarding(yourActiveIndex),
                    style: AppStyles.onBoardingTitleStyle,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    Utils.getDescriptionOnBoarding(yourActiveIndex),
                    textAlign: TextAlign.center,
                    style: AppStyles.onBoardingTitleStyle
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: yourActiveIndex,
                    count: 3,
                    effect: WormEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.grey.shade400,
                        radius: 4,
                        dotWidth: 35,
                        dotHeight: 8),
                  ),
                  const Spacer(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              yourActiveIndex--;
                            });
                          },
                          child: Text(
                            "Skip",
                            style: AppStyles.titleStyle14,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              yourActiveIndex++;
                            });
                          },
                          child: Text(
                            "Next",
                            style: AppStyles.titleStyle14,
                          ),
                        ),
                      ])
                ])),
          )
        ],
      ),
    );
  }
}
