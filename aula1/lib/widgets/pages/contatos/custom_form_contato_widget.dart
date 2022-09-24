import 'package:aula1/utils/default/pages/contato/default_contato.dart';
import 'package:aula1/utils/default/style/default_style.dart';
import 'package:aula1/utils/functions/new_contact_function.dart';
import 'package:aula1/widgets/editor/editor_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

class CustomFormContatoWidget extends StatelessWidget {
  const CustomFormContatoWidget({
    Key? key,
    required TextEditingController controllerNome,required TextEditingController controllerEndereco,required TextEditingController controllerTelefone,required TextEditingController controllerEmail,required TextEditingController controllerCpf}) 
    : _controllerNome = controllerNome,_controllerEndereco = controllerEndereco,_controllerTelefone = controllerTelefone,_controllerEmail = controllerEmail,_controllerCpf = controllerCpf,
    super(key: key);

  final TextEditingController _controllerNome;
  final TextEditingController _controllerEndereco;
  final TextEditingController _controllerTelefone;
  final TextEditingController _controllerEmail;
  final TextEditingController _controllerCpf;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FormListaWidget(controllerNome: _controllerNome, controllerEndereco: _controllerEndereco, controllerTelefone: _controllerTelefone, controllerEmail: _controllerEmail, controllerCpf: _controllerCpf),
    );
  }
}

class FormListaWidget extends StatelessWidget {
  const FormListaWidget({
    Key? key,
    required TextEditingController controllerNome,
    required TextEditingController controllerEndereco,
    required TextEditingController controllerTelefone,
    required TextEditingController controllerEmail,
    required TextEditingController controllerCpf,
  }) : _controllerNome = controllerNome, _controllerEndereco = controllerEndereco, _controllerTelefone = controllerTelefone, _controllerEmail = controllerEmail, _controllerCpf = controllerCpf, super(key: key);

  final TextEditingController _controllerNome;
  final TextEditingController _controllerEndereco;
  final TextEditingController _controllerTelefone;
  final TextEditingController _controllerEmail;
  final TextEditingController _controllerCpf;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Nome
        EditorWidget(
          icone: Icons.person_outlined,
          controlador: _controllerNome,
          rotulo: DefaultContato.rotuloNome,
          dica: DefaultContato.dicaCampoNome,
          isNumb: false
        ),
        //Endereço
        EditorWidget(
          icone: Icons.house,
          controlador: _controllerEndereco,
          rotulo: DefaultContato.rotuloEndereco,
          dica: DefaultContato.dicaCampoEndereco,
          isNumb: false,
        ),
        //Telefone
        EditorWidget(
          icone: Icons.phone_rounded,
          controlador: _controllerTelefone,
          rotulo: DefaultContato.rotuloTelefone,
          dica: DefaultContato.dicaCampoTelefone,
          isNumb: true,
          isTel: false,
        ),
        //Email
        EditorWidget(
          icone: Icons.mail,
          controlador: _controllerEmail,
          rotulo: DefaultContato.rotuloEmail,
          dica: DefaultContato.dicaCampoEmail,
          isNumb: false,
        ),
        //CPF
        EditorWidget(
          icone: Icons.document_scanner,
          controlador: _controllerCpf,
          rotulo: DefaultContato.rotuloCpf,
          dica: DefaultContato.dicaCampoCpf,
          isNumb: true,
          isCpf: false,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * DefaultStyle.defaultWidth,
          height: MediaQuery.of(context).size.height * DefaultStyle.defaultHeight,
          child: ElevatedButton(
            onPressed: () {
              if (GetUtils.isCpf(_controllerCpf.text)) {criaContato(context, _controllerNome, _controllerEndereco,  _controllerTelefone, _controllerEmail, _controllerCpf);
              } else if (_controllerNome.text.isEmpty ||_controllerEndereco.text.isEmpty ||_controllerTelefone.text.isEmpty ||_controllerEmail.text.isEmpty ||_controllerCpf.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(DefaultContato.errorEmpty)));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(DefaultContato.errorCpf)));
              }},
            child: Text(DefaultContato.textoBotaoConfirmar),
          ),
        ),
      ],
    );
  }
}
