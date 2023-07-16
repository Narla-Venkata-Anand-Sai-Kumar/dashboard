import 'package:dashboard/models/hack_details.dart';
import 'package:flutter/material.dart';

import '../models/cheif_bar.dart';
import '../models/graph_b.dart';
import '../models/stars.dart';
import '../models/stu_top_data.dart';

class StudentActivityDashboard1 extends StatelessWidget {
  const StudentActivityDashboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Screen1(),
      ),
    );
  }
}

class Tab2Content extends StatelessWidget {
  const Tab2Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.4,
          // color: Colors.amber,
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                width: MediaQuery.of(context).size.width * 0.43,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 239, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: ListView(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                width: MediaQuery.of(context).size.width * 0.43,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFCACC),
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const top_data(),
          Container(
            // width: MediaQuery.of(context).size.width * 0.45,
            margin: const EdgeInsets.only(
              top: 0,
              left: 20,
              right: 20,
            ),
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
            child: const Center(
              child: StarRating(
                starCount: 5,
                rating: 3.1,
                color: Colors.amber,
                size: 50.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TabBar(
            labelColor: Colors.blue.shade400,
            indicator: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 0, 61, 245), Colors.purple]),
              borderRadius: BorderRadius.circular(9),
            ),
            tabs: const [
              Tab(text: "Acheivements"),
              Tab(text: 'Projects'),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: [
                  Tab1Content(),
                  const Tab2Content(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Tab1Content extends StatelessWidget {
  Tab1Content({Key? key}) : super(key: key);
  final List<double> values = [5, 9, 20];
  final List<String> labels = ['Coursera', 'Nptel', 'Edx'];
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const hack_details(),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            "Online Certifications : ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 237, 229, 229).withOpacity(0.5),
                spreadRadius: 7,
                blurRadius: 10,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 117, 161, 91).withOpacity(0.5),
                const Color.fromARGB(255, 98, 196, 96),
              ],
            ),
          ),
          child: CustomPaint(
            painter: BarGraphPainter(values, labels),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            "Code Cheif : ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        // PersonStars(),
        const progress_bar(ang: 2,),
      ],
    );
  }
}

