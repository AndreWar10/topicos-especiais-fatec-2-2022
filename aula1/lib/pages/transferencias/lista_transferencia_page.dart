import 'package:aula1/models/transferencia.dart';
import 'package:aula1/pages/transferencias/formulario_transferencia_page.dart';
import 'package:aula1/widgets/transferencias/listview_transferencia_widget.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Lista de Transferências";

class ListaTransferenciasPage extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  ListaTransferenciasPage({Key? key}) : super(key: key);

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
        centerTitle: true,
        title: Text(_tituloAppBar),
      ),
      body: ListViewTransfWidget(
        widget: widget,
        transferencias: widget._transferencias,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (FormularioTransferenciaPage()),
            ),
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
