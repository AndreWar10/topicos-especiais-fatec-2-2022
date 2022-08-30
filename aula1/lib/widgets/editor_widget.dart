//alterar dados formulário 1
import 'package:flutter/material.dart';

class EditorWidget extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  const EditorWidget({
    Key? key,
    required this.controlador,
    required this.rotulo,
    required this.dica,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 18.0),
        decoration: InputDecoration(
          icon: Icon(icone),
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
