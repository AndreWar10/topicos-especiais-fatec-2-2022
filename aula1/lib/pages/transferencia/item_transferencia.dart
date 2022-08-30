import 'package:aula1/models/transferencia.dart';
import 'package:aula1/widgets/custom_card_transferencia_widget.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  const ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomCardTransferenciaWidget(transferencia: _transferencia);
  }
}

