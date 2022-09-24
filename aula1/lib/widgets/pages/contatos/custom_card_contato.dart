import 'package:aula1/models/contato.dart';
import 'package:aula1/pages/contatos/detail_contato_page.dart';
import 'package:flutter/material.dart';

class CustomCardContatoWidget extends StatelessWidget {
  const CustomCardContatoWidget({
    Key? key,
    required Contato contato,
  })  : _contato = contato,
        super(key: key);

  final Contato _contato;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => (DetailContatoPage(contato: _contato)),
        ),
      ),
      child: Card(
        child: ListTile(
          trailing: Icon(Icons.help),
          leading: Icon(
            Icons.person,
            size: 30,
          ),
          title: Text(_contato.nome),
          subtitle: Text("Telefone: ${_contato.telefone}"),
        ),
      ),
    );
  }
}
