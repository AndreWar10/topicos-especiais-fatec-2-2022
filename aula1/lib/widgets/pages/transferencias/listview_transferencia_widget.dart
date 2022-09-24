import 'package:aula1/models/transferencia.dart';
import 'package:aula1/pages/transferencias/lista_transferencia_page.dart';
import 'package:aula1/widgets/pages/transferencias/item_transferencia_widget.dart';
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
        return ItemTransferenciaWidget(transferencia);
      },
    );
  }
}