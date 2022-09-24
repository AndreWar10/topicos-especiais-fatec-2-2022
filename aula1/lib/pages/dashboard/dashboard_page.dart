import 'package:aula1/utils/default/pages/dashboard/default_contato.dart';
import 'package:aula1/utils/default/pages/dashboard/default_dash.dart';
import 'package:aula1/utils/default/pages/dashboard/default_transferencia.dart';
import 'package:aula1/widgets/pages/dashboard/custom_card_dash_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(DefaultDash.defaultAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCardDashboardWidget(
              page: DefaultDashTransferencia.listaRoute,
              icone: DefaultDashTransferencia.icone,
              background: DefaultDashTransferencia.color,
              titulo: DefaultDashTransferencia.transferenciaTitulo,
            ),
            CustomCardDashboardWidget(
              page: DefaultDashContato.contatoRoute,
              icone: DefaultDashContato.icone,
              background: DefaultDashContato.color,
              titulo: DefaultDashContato.contatoTitulo,
            ),
          ],
        ),
      ),
    );
  }
}
