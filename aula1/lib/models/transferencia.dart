class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() => "Transferencia{valor: $valor, nº conta: $numeroConta}";
}
