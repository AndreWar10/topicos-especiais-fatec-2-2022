import 'package:aula1/models/contato.dart';
import 'package:aula1/utils/default/pages/contato/default_contato.dart';
import 'package:aula1/utils/default/style/default_style.dart';
import 'package:aula1/widgets/pages/contatos/detail_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class DetailContatoPage extends StatelessWidget {
  const DetailContatoPage({Key? key,
  required Contato contato}): _contato = contato, super(key: key);

  final Contato _contato;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_contato.nome),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailPageItemWidget(defaultC: DefaultContato.defaultNome, value: _contato.nome),
          DetailPageItemWidget(defaultC: DefaultContato.defaultTelefone, value: _contato.telefone),
          DetailPageItemWidget(defaultC: DefaultContato.defaultEmail, value: _contato.email),
          DetailPageItemWidget(defaultC: DefaultContato.defaultCpf, value: _contato.cpf),
          DetailPageItemWidget(defaultC: DefaultContato.defaultEndereco, value: _contato.endereco),
          DetailPageItemWidget(defaultC: DefaultContato.defaultData, value: DateFormat(DefaultStyle.defaultDateFormat)
          .format(_contato.data)),
        ],
      ),
    );
  }
}


