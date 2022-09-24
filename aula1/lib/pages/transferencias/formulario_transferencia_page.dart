import 'package:aula1/utils/default/pages/transferencia/default_transferencia.dart';
import 'package:aula1/utils/default/style/default_style.dart';
import 'package:aula1/utils/functions/new_transfer_function.dart';
import 'package:aula1/widgets/editor/editor_widget.dart';
import 'package:flutter/material.dart';

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
          title: Text(DefaultTransferencia.tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              EditorWidget(
                  isNumb: true,
                  controlador: _controllerConta,
                  rotulo: DefaultTransferencia.rotuloCampoNumeroConta,
                  dica: DefaultTransferencia.dicaCampoNumeroConta,
                  icone: DefaultTransferencia.iconeConta),
              EditorWidget(
                  isNumb: true,
                  controlador: _controllerValor,
                  rotulo: DefaultTransferencia.rotuloCampoValor,
                  dica: DefaultTransferencia.dicaCampoValor,
                  icone: DefaultTransferencia.iconeValor,
                  isDin: false,),
              SizedBox(
                width: MediaQuery.of(context).size.width * DefaultStyle.defaultWidth,
                height: MediaQuery.of(context).size.height * DefaultStyle.defaultHeight,
                child: ElevatedButton(
                  onPressed: () => criaTransferencia(
                      context, _controllerConta, _controllerValor),
                  child: Text(DefaultTransferencia.textoBotaoConfirmar),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
