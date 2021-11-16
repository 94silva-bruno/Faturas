import 'package:faturas/model/payment_option.dart';

class PaymentOptionsModel {

  double _invoiceValue;
  List<PaymentOption> _paymentOptions;

  PaymentOptionsModel(this._invoiceValue, this._paymentOptions);

  double get invoiceValue => _invoiceValue;

  List<PaymentOption> get paymentOptions => _paymentOptions;
}