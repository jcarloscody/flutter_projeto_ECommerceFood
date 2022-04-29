import 'package:flutter/material.dart';
import 'package:food_e_commerce/utils/colors.dart';
import 'package:food_e_commerce/widgets/big_text.dart';
import 'package:food_e_commerce/widgets/food_page_body.dart';
import 'package:food_e_commerce/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigTextWidget(
                      text: "Brasil",
                      color: AppCores.princCor,
                    ),
                    Row(
                      children: [
                        SmallTextWidget(
                          text: "Timbaúba",
                          color: AppCores.textoCor,
                        ),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppCores.princCor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        FoodPageBodyWidget()
      ],
    ));
  }
}
