import 'package:flutter/material.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}