import 'package:aula1/models/transferencia.dart';
import 'package:aula1/pages/transferencias/formulario_transferencia_page.dart';
import 'package:aula1/utils/default/pages/transferencia/default_transferencia.dart';
import 'package:aula1/widgets/pages/transferencias/listview_transferencia_widget.dart';
import 'package:flutter/material.dart';

class ListaTransferenciasPage extends StatefulWidget {
  ListaTransferenciasPage({Key? key}) : super(key: key);
  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() => ListaTransferenciasPageState();
}

class ListaTransferenciasPageState extends State<ListaTransferenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(DefaultTransferencia.defaultAppBar),
      ),
      body: ListViewTransfWidget(widget: widget,transferencias: widget._transferencias),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => (FormularioTransferenciaPage())))
          .then((transferenciaRecebida) => _atualiza(context, transferenciaRecebida));
        },
      ),
    );
  }
  void _atualiza(BuildContext context, Transferencia? transferenciaRecebida) {
    if (transferenciaRecebida != null){setState(() {widget._transferencias.add(transferenciaRecebida);});
    }
  }
}
