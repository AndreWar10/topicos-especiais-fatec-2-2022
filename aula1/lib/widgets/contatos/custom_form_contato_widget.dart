import 'package:aula1/utils/functions/new_contact_function.dart';
import 'package:aula1/widgets/editor_widget.dart';
import 'package:flutter/material.dart';

class CustomFormContatoWidget extends StatelessWidget {
  const CustomFormContatoWidget({
    Key? key,
    required TextEditingController controllerNome,
    required TextEditingController controllerEndereco,
    required TextEditingController controllerTelefone,
    required TextEditingController controllerEmail,
    required TextEditingController controllerCpf,
  })  : _controllerNome = controllerNome,
        _controllerEndereco = controllerEndereco,
        _controllerTelefone = controllerTelefone,
        _controllerEmail = controllerEmail,
        _controllerCpf = controllerCpf,
        super(key: key);

  final TextEditingController _controllerNome;
  final TextEditingController _controllerEndereco;
  final TextEditingController _controllerTelefone;
  final TextEditingController _controllerEmail;
  final TextEditingController _controllerCpf;

  final _textoBotaoConfirmar = "Confirmar";

  final _rotuloNome = "Nome";
  final _dicaCampoNome = "Nome Completo";

  final _rotuloEndereco = "Endereco";
  final _dicaCampoEndereco = "Ex. Rua das Dores, 666";

  final _rotuloTelefone = "Telefone";
  final _dicaCampoTelefone = "(00) 0000-0000";

  final _rotuloEmail = "Email";
  final _dicaCampoEmail = "alexandreWidget@widget.com";

  final _rotuloCpf = "CPF";
  final _dicaCampoCpf = "000.000.000-00";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          EditorWidget(
            icone: Icons.person_outlined,
            controlador: _controllerNome,
            rotulo: _rotuloNome,
            dica: _dicaCampoNome,
            isNumb: false,
          ),
          EditorWidget(
            icone: Icons.house,
            controlador: _controllerEndereco,
            rotulo: _rotuloEndereco,
            dica: _dicaCampoEndereco,
            isNumb: false,
          ),
          EditorWidget(
            icone: Icons.phone_rounded,
            controlador: _controllerTelefone,
            rotulo: _rotuloTelefone,
            dica: _dicaCampoTelefone,
            isNumb: true,
          ),
          EditorWidget(
            icone: Icons.mail,
            controlador: _controllerEmail,
            rotulo: _rotuloEmail,
            dica: _dicaCampoEmail,
            isNumb: false,
          ),
          EditorWidget(
            icone: Icons.document_scanner,
            controlador: _controllerCpf,
            rotulo: _rotuloCpf,
            dica: _dicaCampoCpf,
            isNumb: true,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(
              onPressed: () => criaContato(
                  context,
                  _controllerNome,
                  _controllerEndereco,
                  _controllerTelefone,
                  _controllerEmail,
                  _controllerCpf),
              child: Text(_textoBotaoConfirmar),
            ),
          ),
        ],
      ),
    );
  }
}
