import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class WeclomeScreen extends StatefulWidget {
  const WeclomeScreen({super.key});

  @override
  State<WeclomeScreen> createState() => _WeclomeScreenState();
}

class _WeclomeScreenState extends State<WeclomeScreen> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(children: [AppLargeText(text: "Trips")]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
