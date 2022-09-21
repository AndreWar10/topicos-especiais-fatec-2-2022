import 'package:aula1/models/transferencia.dart';
import 'package:aula1/utils/functions/convert_number_function.dart';
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
        leading: Icon(Icons.monetization_on,size: 30,),
        title: Text(convertNumber(_transferencia.valor).toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}