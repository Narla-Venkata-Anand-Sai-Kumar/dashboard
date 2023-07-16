
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class progress_bar extends StatelessWidget {
  final double ang;
  const progress_bar({
    super.key,required this.ang
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top : 20,left: 70,right: 70),
      child: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 225, 221, 221).withOpacity(0.9),
            spreadRadius: 6,
            blurRadius: 6
          )
        ]
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(60),
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.star,
                color: Colors.amber.shade300,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                // color: Colors.white
              ),
              child: Center(
                child: SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                    startAngle: 150,
                    angleRange: ang*120,
                    
                    customColors: CustomSliderColors(
                      progressBarColors: [const Color.fromARGB(255, 222, 20, 20), const Color.fromARGB(255, 57, 134, 212), const Color.fromARGB(255, 168, 106, 85)],
                      // trackColor: Colors.grey,
                    ),
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 20,
                      trackWidth: 10,
                      handlerSize: 4,
                    ),
                    infoProperties: InfoProperties(
                      mainLabelStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      modifier: (double value) {
                        final roundedValue = value.round();
                        return '$roundedValue';
                      },
                    ),
                  ),
                  min: 1,
                  max: 3,
                  initialValue: ang,
                            onChange: null,
                    onChangeEnd: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}