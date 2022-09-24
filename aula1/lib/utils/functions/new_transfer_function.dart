import 'package:aula1/models/transferencia.dart';
import 'package:flutter/material.dart';

void criaTransferencia(BuildContext context,TextEditingController controllerConta,TextEditingController controllerValor) {
  final int? numeroConta = int.tryParse(controllerConta.text);
  final String valorTransferencia = controllerValor.text;
  final DateTime data = DateTime.now();
  
  if (numeroConta != null) {
    final transferenciaCriada = Transferencia(valorTransferencia, numeroConta, data);
    Navigator.pop(context, transferenciaCriada);
  }
}


