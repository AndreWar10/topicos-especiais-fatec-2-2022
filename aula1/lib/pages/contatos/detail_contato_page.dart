import 'package:aula1/models/contato.dart';
import 'package:flutter/material.dart';

class DetailContatoPage extends StatelessWidget {
  const DetailContatoPage({
    Key? key,
    required Contato contato,
  })  : _contato = contato,
        super(key: key);

  final Contato _contato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_contato.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Text(
                  "Nome Completo: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(_contato.nome, style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Text(
                  "CPF: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(_contato.cpf, style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Text(
                  "Email: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(_contato.email, style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Text(
                  "Endereço: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(_contato.endereco, style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Text(
                  "Telefone: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(_contato.telefone, style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
