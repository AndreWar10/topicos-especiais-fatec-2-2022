import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({
    Key? key,
    required this.icone,
  }) : super(key: key);

  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          color: Colors.black,
          size: 50,
        )
      ],
    );
  }
}