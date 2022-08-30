import 'package:aula1/utils/cria_transferencia_function.dart';
import 'package:aula1/widgets/editor_widget.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Nova Transferência";
const _rotuloCampoValor = "Valor";
const _dicaCampoValor = "0.00";
const _dicaCampoNumeroConta = "0000";
const _rotuloCampoNumeroConta = "Número da conta";
const _textoBotaoConfirmar = "Confirmar";

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FormularioTransferenciaState();
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            EditorWidget(
                controlador: _controllerConta,
                rotulo: _rotuloCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                icone: Icons.account_balance),
            EditorWidget(
                controlador: _controllerValor,
                rotulo: _rotuloCampoValor,
                dica: _dicaCampoValor,
                icone: Icons.monetization_on),
            ElevatedButton(
              onPressed: () => criaTransferencia(
                  context, _controllerConta, _controllerValor),
              child: Text(_textoBotaoConfirmar),
            ),
          ],
        ),
      ),
    );
  }
}
