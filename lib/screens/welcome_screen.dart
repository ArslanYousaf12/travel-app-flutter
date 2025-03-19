import 'package:flutter/material.dart';

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
              ),
            ),
          );
        },
      ),
    );
  }
}
