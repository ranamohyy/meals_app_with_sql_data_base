import 'package:flutter/material.dart';
import 'package:meals_app/assets/app_styles.dart';
import 'package:meals_app/dp_helper/dp_helper.dart';
import 'package:meals_app/widgets/top_home_widget';

DpHelper dpHelper = DpHelper.instance;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopHomeWidget(),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                "Your Food ",
                style: AppStyles.titleStyle16,
                textAlign: TextAlign.start,
              ),
            ),
            Expanded(
              child: FutureBuilder(
                  future: dpHelper.getMeals(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    //  else if (snapshot.hasError) {
                    //   return Center(child: Text(snapshot.error.toString()));
                    // }
                    return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade200),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      snapshot.data![index].imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(snapshot.data![index].name),
                                    Expanded(
                                      child: Row(
                                        spacing: 5,
                                        children: [
                                          const Icon(
                                            Icons.star_rate,
                                            color: Colors.orange,
                                          ),
                                          Text(snapshot.data![index].rate
                                              .toString()),
                                          const Spacer(),
                                          const Icon(Icons.watch_later,
                                              color: Colors.orange),
                                          Text(snapshot.data![(index)].time),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
