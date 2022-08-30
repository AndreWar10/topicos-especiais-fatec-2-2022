import 'package:aula1/models/transferencia.dart';
import 'package:aula1/pages/transferencia/formulario_transferencia.dart';
import 'package:aula1/widgets/listview_transferencia_widget.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Transferências";

class ListaTransferenciasPage extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  ListaTransferenciasPage({Key? key})
      : super(key: key); //acesso ele com widget.

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasPageState();
  }
}

class ListaTransferenciasPageState extends State<ListaTransferenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListViewTransfWidget(
        widget: widget,
        transferencias: widget._transferencias,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //future: como se fosse um callBack
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormularioTransferencia()),
          )
          .then((transferenciaRecebida) => _atualiza(transferenciaRecebida));
        },
      ),
    );
  }

  void _atualiza(Transferencia? transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }
}
