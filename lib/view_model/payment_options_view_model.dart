import 'package:faturas/model/payment_option.dart';
import 'package:faturas/model/payment_options_model.dart';
import 'package:flutter/material.dart';

class PaymentOptionsViewModel extends ChangeNotifier {
  PaymentOptionsModel paymentOptionsModel = PaymentOptionsModel(
      3025.49,
      [
        PaymentOption(1, 3180.00, 3025.49),
        PaymentOption(2, 1630.00, 3025.49),
        PaymentOption(3, 1086.67, 3025.49),
        PaymentOption(4, 815.00, 3025.49),
        PaymentOption(5, 662.00, 3025.49),
        PaymentOption(6, 551.67, 3025.49)
      ],
      PaymentOption(1, 3180.00, 3025.49));

  double calculationTransactionFee() {
    final total = paymentOptionsModel.selectedPaymentOption.total;
    final value = paymentOptionsModel.selectedPaymentOption.value;

    final transactionFee =
        (paymentOptionsModel.selectedPaymentOption.number * value) - total;
    return transactionFee;
  }

  void selectedPaymentOptions(int indice) {
    paymentOptionsModel.selectedPaymentOption =
        paymentOptionsModel.paymentOptions[indice];

    notifyListeners();
  }
}
