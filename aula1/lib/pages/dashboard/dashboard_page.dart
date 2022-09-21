import 'package:aula1/widgets/dashboard/custom_card_dash_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      body: Column(
        
        children: [
          CustomCardDashboardWidget(
            page: '/lista',
            icone: Icons.monetization_on,
            background: Colors.yellow[400]!,
            titulo: 'Transferências',
          ),
          CustomCardDashboardWidget(
            page: '/contato',
            icone: Icons.people,
            background: Colors.red[300]!,
            titulo: 'Contatos',
          ),
          //CustomCardDashboardWidget(),
        ],
      ),
    );
  }
}
