import 'package:aula1/models/transferencia.dart';
import 'package:aula1/pages/transferencias/detail_transferencia_page.dart';
import 'package:flutter/material.dart';

class CustomCardTransferenciaWidget extends StatelessWidget {
  const CustomCardTransferenciaWidget({
    Key? key,
    required Transferencia transferencia,
  }) : _transferencia = transferencia, super(key: key);

  final Transferencia _transferencia;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => (DetailTransfPage(transferencia: _transferencia)),
        ),
      ),
      child: Card(
        child: ListTile(
          trailing: Icon(Icons.help),
          leading: Icon(Icons.monetization_on,size: 30),
          title: Text(_transferencia.valor),
          subtitle: Text(_transferencia.numeroConta.toString()),
        ),
      ),
    );
  }
}