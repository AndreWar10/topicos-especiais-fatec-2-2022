import 'package:aula1/widgets/dashboard/custom_icon_widget.dart';
import 'package:aula1/widgets/dashboard/custom_title_widget.dart';
import 'package:flutter/material.dart';

class CustomContainerDashboardWidget extends StatelessWidget {
  const CustomContainerDashboardWidget({
    Key? key,
    required this.background,
    required this.icone,
    required this.titulo,
  }) : super(key: key);

  final Color background;
  final IconData icone;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 150,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Colors.black, ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, bottom: 24),
          child: Column(
            children: [
              CustomIconWidget(icone: icone),
              Spacer(),
              CustomTitleWidget(titulo: titulo)
            ],
          ),
        ),
      ),
    );
  }
}