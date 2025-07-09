import 'package:flutter/material.dart';
import 'package:meals_app/assets/app_assets.dart';
import 'package:meals_app/assets/app_styles.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.asset(
                      AppAssets.burger,
                    ),
                    Positioned(
                      top: 14,
                      left: 12,
                      child: Container(
                        height: 50,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  "Cheese Burger 🍔",
                  style: AppStyles.titleStyle16.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.watch_later, color: Colors.orange),
                    Text("20-3"),
                    Spacer(),
                    Icon(
                      Icons.star_rate,
                      color: Colors.orange,
                    ),
                    Text("4.5"),
                  ],
                ),
                const Divider(),
                Text(
                  "Description",
                  style: AppStyles.titleStyle16,
                ),
                Text(
                    "Burger With Meat is a typical food from our restaurant that is much in demand by many people, this is very recommended for you.",
                    style: AppStyles.titleStyle14Grey),
              ]),
        ),
      ),
    );
  }
}
