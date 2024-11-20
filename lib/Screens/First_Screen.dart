import 'package:action_slider/action_slider.dart';
import 'package:attendy_sample_1/Ui_designs_1/war_and_piece.dart';
import 'package:flutter/material.dart';

/// Page 1
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          "Hey Prashant!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: const [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/prashant1.jpeg"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionSlider.standard(
              rolling: true,
              sliderBehavior: SliderBehavior.move,
              width: 500.0,
              backgroundColor: Colors.black,
              toggleColor: const Color.fromARGB(255, 255, 0, 0),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 1));
                controller.success();
                print("object"); //starts success animation
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WarAndPiece(),
                  ),
                );
                await Future.delayed(const Duration(seconds: 1));
                controller.reset(); //resets the slider
              },
              child: const Text(
                'Slide to confirm',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
