import 'package:flutter/material.dart';
import 'package:meals_app/assets/app_assets.dart';
import 'package:meals_app/assets/app_colors.dart';
import 'package:meals_app/assets/app_styles.dart';

class TopHomeWidget extends StatelessWidget {
  const TopHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.centerLeft, children: [
      Image.asset(
        AppAssets.homeBackGround,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: 32, horizontal: 10),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.onBoardingBGColor.withOpacity(0.1),
            ),
            child: Text(
              " Welcome \n Add A New \n  Recipe ",
              style: AppStyles.onBoardingTitleStyle,
            )),
      ),
    ]);
  }
}
