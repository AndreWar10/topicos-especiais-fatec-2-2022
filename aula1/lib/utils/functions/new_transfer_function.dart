import 'package:aula1/models/transferencia.dart';
import 'package:flutter/material.dart';

void criaTransferencia(BuildContext context,TextEditingController controllerConta,TextEditingController controllerValor) {
  final int? numeroConta = int.tryParse(controllerConta.text);
  final double? valorTransferencia = double.tryParse(controllerValor.text);
  
  if (numeroConta != null && valorTransferencia != null) {
    final transferenciaCriada = Transferencia(valorTransferencia, numeroConta);
    Navigator.pop(context, transferenciaCriada);
  }
}


