import 'package:aula1/utils/default/style/default_style.dart';
import 'package:flutter/material.dart';

class WrapDetailWidget extends StatelessWidget {
  const WrapDetailWidget({
    Key? key,
    required this.value,
    required this.texto,
  }) : super(key: key);

  final String value;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: DefaultStyle.defaultPadding, left: DefaultStyle.defaultPadding),
      child: Wrap(
        children: [
          Text(
            texto,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: DefaultStyle.defaultDetailFont),
          ),
          Text(value,
            style: TextStyle(fontSize: DefaultStyle.defaultDetailFont)),
        ],
      ),
    );
  }
}