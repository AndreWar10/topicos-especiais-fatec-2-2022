import 'package:aula1/models/contato.dart';
import 'package:aula1/pages/contatos/formulario_contato_page.dart';
import 'package:aula1/widgets/contatos/listview_contato_widget.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Lista de Contatos";

class ContatosPage extends StatefulWidget {
  final List<Contato> _contatos = [];
  ContatosPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ContatosPageState();
}

class ContatosPageState extends State<ContatosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_tituloAppBar),
      ),
      body: 
      ListViewContatoWidget(
        widget: widget,
        contatos: widget._contatos,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (FormularioContatoPage()),
            ),
          )
          .then((contatoRecebido) => _atualiza(contatoRecebido));
        },
      ),
    );
  }

  void _atualiza(Contato? contatoRecebido) {
    if (contatoRecebido != null) {
      setState(() {
        widget._contatos.add(contatoRecebido);
      });
    }
  }
}
