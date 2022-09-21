import 'package:aula1/widgets/contatos/custom_form_contato_widget.dart';
import 'package:flutter/material.dart';

class FormularioContatoPage extends StatefulWidget {
  const FormularioContatoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FormularioContatoPageState();
}

class FormularioContatoPageState extends State<FormularioContatoPage> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerEndereco = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Novo Contato"),
        ),
        body: CustomFormContatoWidget(
          controllerNome: _controllerNome,
          controllerEndereco: _controllerEndereco,
          controllerTelefone: _controllerTelefone,
          controllerEmail: _controllerEmail,
          controllerCpf: _controllerCpf,
        ),
      ),
    );
  }
}
