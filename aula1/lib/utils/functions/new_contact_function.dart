// ignore_for_file: unnecessary_nullable_for_final_variable_declarations

import 'package:aula1/models/contato.dart';
import 'package:flutter/material.dart';

void criaContato(BuildContext context,TextEditingController controllerNome,TextEditingController controllerEndereco,TextEditingController controllerTelefone,TextEditingController controllerEmail,TextEditingController controllerCpf) {

  final String? nome = controllerNome.text;
  final String? endereco = controllerEndereco.text;
  final String? telefone = controllerTelefone.text;
  final String? email = controllerEmail.text;
  final String? cpf = controllerCpf.text;

  if (nome!.isNotEmpty && endereco!.isNotEmpty && telefone!.isNotEmpty && email!.isNotEmpty && cpf!.isNotEmpty) {
    final contatoCriado = Contato(nome, endereco, telefone, email, cpf);
    Navigator.pop(context, contatoCriado);
  }
}


