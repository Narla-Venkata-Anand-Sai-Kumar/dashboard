
import 'package:flutter/material.dart';

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
