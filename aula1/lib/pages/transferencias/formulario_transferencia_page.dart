import 'package:aula1/utils/functions/new_transfer_function.dart';
import 'package:aula1/widgets/editor_widget.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Nova Transferência";
const _rotuloCampoValor = "Valor";
const _dicaCampoValor = "0.00";
const _dicaCampoNumeroConta = "0000";
const _rotuloCampoNumeroConta = "Número da conta";
const _textoBotaoConfirmar = "Confirmar";

class FormularioTransferenciaPage extends StatefulWidget {
  const FormularioTransferenciaPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FormularioTransferenciaPageState();
}

class FormularioTransferenciaPageState
    extends State<FormularioTransferenciaPage> {
  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              EditorWidget(
                  isNumb: true,
                  controlador: _controllerConta,
                  rotulo: _rotuloCampoNumeroConta,
                  dica: _dicaCampoNumeroConta,
                  icone: Icons.account_balance),
              EditorWidget(
                  isNumb: true,
                  controlador: _controllerValor,
                  rotulo: _rotuloCampoValor,
                  dica: _dicaCampoValor,
                  icone: Icons.monetization_on),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
                child: ElevatedButton(
                  onPressed: () => criaTransferencia(
                      context, _controllerConta, _controllerValor),
                  child: Text(_textoBotaoConfirmar),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
