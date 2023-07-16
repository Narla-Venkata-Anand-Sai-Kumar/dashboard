
import 'package:flutter/material.dart';

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
