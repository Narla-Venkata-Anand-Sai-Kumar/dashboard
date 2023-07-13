import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StudentActivityDashboard extends StatefulWidget {
  const StudentActivityDashboard({super.key});

  @override
  State<StudentActivityDashboard> createState() =>
      _StudentActivityDashboardState();
}

class _StudentActivityDashboardState extends State<StudentActivityDashboard> {
  @override
  Widget build(BuildContext context) {
    return const Screen1();
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
              contain(),
            Container(
                    // width: MediaQuery.of(context).size.width * 0.45,
                    margin: const EdgeInsets.only(top: 0,left:20,right: 20, ),
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
             LineChartExample(),
          ],
        ),
      ),
    );
  }
}

class contain extends StatelessWidget {
  const contain({
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
            // padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(12),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextField(
                  id: "Name",
                  value: "N V Anand",
                ),
                SizedBox(height: 10),
                AnimatedTextField(
                  id: "Section",
                  value: "S-05",
                ),
                SizedBox(height: 10),
                AnimatedTextField(
                  id: "Reg No",
                  value: "992100449",
                ),
                SizedBox(height: 10),
                AnimatedTextField(
                  id: "KARE RANK",
                  value: "12th",
                ),
              ],
            ),
          )
        ],
      ),
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

class AnimatedTextField extends StatefulWidget {
  final String id;
  final String value;

  const AnimatedTextField({Key? key, required this.id, required this.value})
      : super(key: key);

  @override
  _AnimatedTextFieldState createState() => _AnimatedTextFieldState();
}

class _AnimatedTextFieldState extends State<AnimatedTextField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Row(
        children: [
          Text(
            "${widget.id}: ",
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            widget.value,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
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
          onTap: () {
            
          },
          child: buildStar(context, index),
        );
      }),
    );
  }
}

class LineChartExample extends StatelessWidget {
  final List<LineChartData> data = [
    LineChartData('Low', 10,0),
    LineChartData('Your Value', 15,1),
    LineChartData('Highest', 90,2),
  ];

   LineChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      child: charts.LineChart(
        _createSeriesData(),
        animate: true,
        defaultRenderer: charts.LineRendererConfig(
          includePoints: true,
        ),
      ),
    );
  }

  List<charts.Series<LineChartData, int>> _createSeriesData() {
    return [
      charts.Series<LineChartData, int>(
        id: 'Line Chart',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LineChartData data, _) => data.index,
        measureFn: (LineChartData data, _) => data.value,
        data: data,
      ),
    ];
  }
}

class LineChartData {
  final String label;
  final int value;
  final int index;

  LineChartData(this.label, this.value,this.index);
}