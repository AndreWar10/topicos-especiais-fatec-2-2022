import 'package:aula1/widgets/dashboard/custom_container_widget.dart';
import 'package:flutter/material.dart';

class CustomCardDashboardWidget extends StatelessWidget {
  const CustomCardDashboardWidget({
    Key? key,
    required this.page,
    required this.icone,
    required this.background,
    required this.titulo,
  }) : super(key: key);

  final String page;
  final IconData icone;
  final Color background;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(page),
        child: CustomContainerDashboardWidget(
          background: background,
          icone: icone,
          titulo: titulo,
        ),
      ),
    );
  }
}
