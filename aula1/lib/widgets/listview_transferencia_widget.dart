import 'package:aula1/models/transferencia.dart';
import 'package:aula1/pages/transferencia/item_transferencia.dart';
import 'package:aula1/pages/transferencia/lista_transferencia_page.dart';
import 'package:flutter/material.dart';

class ListViewTransfWidget extends StatelessWidget {
   const ListViewTransfWidget({
    Key? key,
    required this.widget,
    required this.transferencias,
  }) : super(key: key);

  final ListaTransferenciasPage widget;
  final List<Transferencia> transferencias;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transferencias.length,
      itemBuilder: (context, index) {
        final transferencia = transferencias[index];
        return ItemTransferencia(transferencia);
      },
    );
  }
}