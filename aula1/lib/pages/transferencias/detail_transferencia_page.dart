import 'package:aula1/models/transferencia.dart';
import 'package:aula1/utils/default/style/default_style.dart';
import 'package:aula1/utils/default/pages/transferencia/default_transferencia.dart';
import 'package:aula1/widgets/pages/transferencias/detail_transf_wrap_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailTransfPage extends StatelessWidget {
  const DetailTransfPage({
    Key? key,
    required Transferencia transferencia,
  })  : _transferencia = transferencia,
        super(key: key);

  final Transferencia _transferencia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(DefaultTransferencia.defaultDetAppBar),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WrapDetailWidget(
            value: _transferencia.numeroConta.toString(),
            texto: DefaultTransferencia.defaultConta,
          ),
          WrapDetailWidget(
            value: (_transferencia.valor),
            texto: DefaultTransferencia.defaultValor,
          ),
          WrapDetailWidget(
            value: DateFormat(DefaultStyle.defaultDateFormat).format(_transferencia.data),
            texto: DefaultTransferencia.defaultData
          ),
        ],
      ),
    );
  }
}


