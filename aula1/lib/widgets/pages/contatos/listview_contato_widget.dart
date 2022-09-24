import 'package:aula1/models/contato.dart';
import 'package:aula1/pages/contatos/contatos_page.dart';
import 'package:aula1/widgets/pages/contatos/item_contato_widget.dart';
import 'package:flutter/material.dart';

class ListViewContatoWidget extends StatelessWidget {
   const ListViewContatoWidget({
    Key? key,
    required this.widget,
    required this.contatos,
  }) : super(key: key);

  final ContatosPage widget;
  final List<Contato> contatos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contatos.length,
      itemBuilder: (context, index) {
        final contato = contatos[index];
        return ItemContatoWidget(contato);
      },
    );
  }
}