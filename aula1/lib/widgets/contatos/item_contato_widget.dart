import 'package:aula1/models/contato.dart';
import 'package:aula1/widgets/contatos/custom_card_contato.dart';
import 'package:flutter/material.dart';

class ItemContatoWidget extends StatelessWidget {
  final Contato _contato;
  const ItemContatoWidget(this._contato, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => CustomCardContatoWidget(contato: _contato);
}
