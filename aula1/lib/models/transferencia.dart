class Transferencia {
  final String valor;
  final int numeroConta;
  final DateTime data;

  Transferencia(this.valor, this.numeroConta, this.data);

  @override
  String toString() => "Transferencia{valor: $valor, nº conta: $numeroConta, data: $data}";
}
