import 'package:faturas/model/payment_option.dart';
import 'package:flutter/cupertino.dart';

class PaymentOptionsModel extends ChangeNotifier {

  double invoiceValue;
  List<PaymentOption> paymentOptions;
  PaymentOption selectedPaymentOption;

  PaymentOptionsModel(this.invoiceValue, this.paymentOptions, this.selectedPaymentOption);

  paymentOptionSelected(PaymentOption paymentOption) {
    this.selectedPaymentOption = paymentOption;

    notifyListeners();
  }
}