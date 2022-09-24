import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CpfTextFieldWidget extends StatelessWidget {
  const CpfTextFieldWidget({
    Key? key,
    required this.controlador,
    required this.icone,
    required this.rotulo,
    required this.dica,
    required this.isNumb,
  }) : super(key: key);

  final TextEditingController controlador;
  final IconData? icone;
  final String rotulo;
  final String dica;
  final bool isNumb;

  @override
  Widget build(BuildContext context) {
    return TextField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CpfInputFormatter()
        ],
        controller: controlador,
        style: TextStyle(fontSize: 18.0),
        decoration: InputDecoration(
          icon: Icon(
            icone,
            size: 25,
          ),
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType:
            isNumb == true ? TextInputType.number : TextInputType.text);
  }
}