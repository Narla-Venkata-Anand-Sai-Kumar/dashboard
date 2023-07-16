
import 'package:dashboard/models/anitext.dart';
import 'package:flutter/material.dart';

class hack_details extends StatelessWidget {
  const hack_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 0, left: 10, right: 10, bottom: 5),
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.21,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/a_badge.png"),
                  fit: BoxFit.fitWidth),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 20, left: 5, bottom: 20, right: 7),
            decoration: const BoxDecoration(),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AnimatedTextField(
                    id: "No . of Hackthons Attended",
                    value: "9",
                    id_size: 15,
                    val_size: 20,
                    color1: Color.fromARGB(255, 255, 68, 84),
                  ),
                  SizedBox(height: 10),
                  AnimatedTextField(
                    id: "Ranked in top 10",
                    value: "5",
                    id_size: 15,
                    val_size: 20,
                    color1: Color.fromARGB(255, 93, 68, 255),
                  ),
                  SizedBox(height: 10),
                  AnimatedTextField(
                    id: "Winnings",
                    value: "4",
                    id_size: 15,
                    val_size: 20,
                    color1: Color.fromARGB(255, 74, 176, 27),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
