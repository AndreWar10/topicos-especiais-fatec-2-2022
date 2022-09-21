//alterar dados formulário 1
import 'package:flutter/material.dart';

class EditorWidget extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone;
  final bool isNumb;

  const EditorWidget({
    Key? key,
    required this.controlador,
    required this.rotulo,
    required this.dica,
    this.icone,
    required this.isNumb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: TextField(
          // inputFormatters: [
          //   FilteringTextInputFormatter.digitsOnly, CurrencyFormat()],
          controller: controlador,
          style: TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
            icon: Icon(icone, size: 25,),
            labelText: rotulo,
            hintText: dica,
          ),
          keyboardType:
              isNumb == true ? TextInputType.number : TextInputType.text),
    );
  }
}
