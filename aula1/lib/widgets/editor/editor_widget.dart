//alterar dados formulário 1
import 'package:aula1/utils/default/style/default_style.dart';
import 'package:aula1/widgets/mascaras/cpf_mascara.dart';
import 'package:aula1/widgets/mascaras/default_without_mascara.dart';
import 'package:aula1/widgets/mascaras/money_mascara.dart';
import 'package:aula1/widgets/mascaras/telefone_mascara.dart';
import 'package:flutter/material.dart';

class EditorWidget extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone;
  final bool isNumb;
  final bool? isCpf;
  final bool? isTel;
  final bool? isDin;

  const EditorWidget({
    Key? key,
    required this.controlador,
    required this.rotulo,
    required this.dica,
    required this.isNumb,
    this.icone,
    this.isCpf,
    this.isTel, this.isDin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(DefaultStyle.defaultEditorPadding),
      child: isCpf == false
        ? CpfTextFieldWidget(controlador: controlador,icone: icone,rotulo: rotulo,dica: dica,isNumb: isNumb) : isTel == false
        ? TelefoneTextFieldWidget(controlador: controlador,icone: icone,rotulo: rotulo,dica: dica,isNumb: isNumb) : isDin == false
        ? MoneyCpfTextFieldWidget(controlador: controlador, icone: icone, rotulo: rotulo, dica: dica, isNumb: isNumb) 
        : DefaultTextFieldWidget(controlador: controlador, icone: icone, rotulo: rotulo, dica: dica, isNumb: isNumb),
    );
  }
}






