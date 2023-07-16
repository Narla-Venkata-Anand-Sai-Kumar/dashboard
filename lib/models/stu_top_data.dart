
import 'package:dashboard/models/anitext.dart';
import 'package:flutter/material.dart';

class top_data extends StatelessWidget {
  const top_data({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      // margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 90,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(
                  height: 110,
                  width: 110,
                  child: CircularProgressIndicator(
                    value:
                        0.3, // Set value to 1.0 for a dark-filled circular bar
                    strokeWidth: 8,
                    backgroundColor: Color.fromARGB(215, 234, 237, 239),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/badge.png',
                      height: 23,
                      width: 23,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '12th',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextField(
                  id: "Name",
                  value: "N V Anand",
                  id_size: 20,
                  val_size: 16,
                  color1: Colors.black,
                ),
                SizedBox(height: 10),
                AnimatedTextField(
                  id: "Roll No",
                  value: "9921004497",
                  id_size: 20,
                  val_size: 14,
                  color1: Colors.black,
                ),
                SizedBox(height: 10),
                AnimatedTextField(
                  id: "Branch",
                  value: "CSE",
                  id_size: 20,
                  val_size: 16,
                  color1: Colors.black,
                ),
                SizedBox(height: 10),
                AnimatedTextField(
                  id: "Section",
                  value: "B",
                  id_size: 20,
                  val_size: 16,
                  color1: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}