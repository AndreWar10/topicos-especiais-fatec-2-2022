import 'package:aula1/models/transferencia.dart';
import 'package:flutter/material.dart';

class CustomCardTransferenciaWidget extends StatelessWidget {
  const CustomCardTransferenciaWidget({
    Key? key,
    required Transferencia transferencia,
  }) : _transferencia = transferencia, super(key: key);

  final Transferencia _transferencia;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}