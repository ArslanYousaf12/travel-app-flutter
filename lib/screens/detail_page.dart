import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 500,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(0.9),
                        ),
                        AppLargeText(
                          text: "\$ 230",
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: AppColors.mainColor),
                        SizedBox(width: 5),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color:
                                  index < gottenStar
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                            );
                          }),
                        ),
                        AppText(text: "(4.0)", color: AppColors.textColor2),
                      ],
                    ),
                    SizedBox(height: 25),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(height: 5),
                    AppText(text: "Number of Peoples in your group"),
                    SizedBox(height: 10),

                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButton(
                              color:
                                  selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                              backgroundColor:
                                  selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                              borderColor:
                                  selectedIndex == index
                                      ? Colors.black
                                      : AppColors.buttonBackground,
                              size: 50,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20),
                    AppText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(height: 10),
                    AppText(
                      text:
                          "You must go for a travel. Traveling helps get rid of pressure. Go to the mountains to see the nature. ",
                      color: AppColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButton(
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    size: 60,
                    borderColor: AppColors.textColor1,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20),
                  ResponsiveButton(isResponsive: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
