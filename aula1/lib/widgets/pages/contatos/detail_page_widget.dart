import 'package:aula1/utils/default/style/default_style.dart';
import 'package:flutter/material.dart';

class DetailPageItemWidget extends StatelessWidget {
  const DetailPageItemWidget({
    Key? key,
    required this.defaultC,
    required this.value,
  }) : super(key: key);

  final String defaultC;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: DefaultStyle.defaultPadding, left: DefaultStyle.defaultPadding),
      child: Wrap(
        children: [
          Text(
            defaultC,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: DefaultStyle.defaultDetailFont),
          ),
          Text(value, style: TextStyle(fontSize: DefaultStyle.defaultDetailFont)),
        ],
      ),
    );
  }
}
