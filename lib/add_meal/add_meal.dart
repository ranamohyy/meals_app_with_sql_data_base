import 'package:flutter/material.dart';
import 'package:meals_app/assets/app_styles.dart';

class AddMealScreen extends StatelessWidget {
  const AddMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Meal",
          style: AppStyles.titleStyle14black
              .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // height: 30,
            width: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              shape: BoxShape.circle,
              color: Colors.transparent,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Meal Name",
              style: AppStyles.titleStyle14black,
            ),
            AppFieldContainer(
              text: "Breakfast",
            ),
            Text(
              "Image URl",
              style: AppStyles.titleStyle14black,
            ),
            AppFieldContainer(
              height: 85,
              text:
                  "https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg",
            ),
            Text(
              "Rate",
              style: AppStyles.titleStyle14black,
            ),
            AppFieldContainer(text: "4.5"),
            Text(
              "Time",
              style: AppStyles.titleStyle14black,
            ),
            AppFieldContainer(text: "20-30"),
            Text(
              "Description",
              style: AppStyles.titleStyle14black,
            ),
            AppFieldContainer(
              text: "first ",
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, 52),
                    backgroundColor: Color(0xffFE8C00)),
                child: Text(
                  "save",
                  style: AppStyles.titleStyle14.copyWith(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}

class AppFieldContainer extends StatelessWidget {
  const AppFieldContainer({super.key, required this.text, this.height});
  final String text;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      height: height ?? 52,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: AppStyles.titleStyle14
            .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}
