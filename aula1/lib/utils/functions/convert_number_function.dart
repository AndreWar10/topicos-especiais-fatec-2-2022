import 'package:intl/intl.dart';

convertNumber(double number) {
  final nfc = NumberFormat.currency(
    symbol: "R\$",
    locale: "pt_BR",
    decimalDigits: 2,
  );

  return nfc.format(number);
}