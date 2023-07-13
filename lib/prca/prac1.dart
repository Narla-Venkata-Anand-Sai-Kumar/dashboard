import 'package:flutter/material.dart';

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
    return const Scaffold();
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
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
          ),
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
              child: const TabBarView(
                children: [
                  Tab1Content(),
                  Tab2Content(),
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
  const Tab1Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          decoration: BoxDecoration(
            // color: Colors.amber,
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
                // padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(
                    top: 20, left: 5, bottom: 20, right: 7),
                decoration: const BoxDecoration(
                    // color: Colors.white,

                    ),
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
        ),
      ],
    );
  }
}

class BarGraph extends StatelessWidget {
  final double value1;
  final double value2;
  final double value3;

  const BarGraph({super.key, required this.value1, required this.value2, required this.value3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBar('Value 1', value1),
          _buildBar('Value 2', value2),
          _buildBar('Value 3', value3),
        ],
      ),
    );
  }

  Widget _buildBar(String label, double value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 20.0,
          height: value * 100.0,
          color: Colors.blue,
        ),
        const SizedBox(height: 8.0),
        Text(label),
      ],
    );
  }
}

class AnimatedTextField extends StatelessWidget {
  final String id;
  final String value;
  final Color color1;
  final double id_size;
  final double val_size;

  const AnimatedTextField(
      {Key? key,
      required this.id,
      required this.val_size,
      required this.color1,
      required this.id_size,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$id: ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: id_size,
          ),
        ),
        Text(
          " $value",
          style: TextStyle(
            color: color1,
            fontWeight: FontWeight.bold,
            fontSize: val_size,
          ),
        ),
      ],
    );
  }
}

class Text_feilds extends StatelessWidget {
  final String id;
  final String value;
  const Text_feilds({super.key, required this.id, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$id : ",
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          value,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
        ),
      ],
    );
  }
}

class StarRating extends StatefulWidget {
  final int starCount;
  final double rating;
  final Color? color;
  final double size;

  const StarRating({
    Key? key,
    this.starCount = 5,
    this.rating = 0.0,
    this.color,
    this.size = 24.0,
  }) : super(key: key);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  late double rating;

  @override
  void initState() {
    super.initState();
    rating = widget.rating;
  }

  Widget buildStar(BuildContext context, int index) {
    IconData iconData = Icons.star;
    Color color = widget.color ?? Theme.of(context).primaryColor;

    if (index >= rating) {
      iconData = Icons.star_border;
      color = color.withOpacity(0.5);
    } else if (index > rating - 1 && index < rating) {
      iconData = Icons.star_half;
    }

    return Icon(
      iconData,
      color: color,
      size: widget.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.starCount, (index) {
        return GestureDetector(
          onTap: () {},
          child: buildStar(context, index),
        );
      }),
    );
  }
}
