import 'package:faturas/model/payment_option.dart';
import 'package:faturas/model/payment_options_model.dart';
import 'package:flutter/material.dart';

class PaymentOptionsViewModel extends ChangeNotifier {

  PaymentOptionsModel paymentOptionsModel = PaymentOptionsModel(
      3025.49,
      [
        PaymentOption(1, 3180.00, 3180.00),
        PaymentOption(2, 1630.00, 3260.00),
        PaymentOption(3, 1086.67, 3260.00),
        PaymentOption(4, 815.00, 3260.00),
        PaymentOption(5, 662.00, 3310.00),
        PaymentOption(6, 551.67, 3310.00)
      ],
      PaymentOption(1, 3180.00, 3180.00));

  double calculationTransactionFee() {
    return (paymentOptionsModel.selectedPaymentOption.number * paymentOptionsModel.selectedPaymentOption.value) - paymentOptionsModel.invoiceValue;
  }

  PaymentOption getPaymentOptionSelected() {
    return paymentOptionsModel.selectedPaymentOption;
  }

  void selectedPaymentOptions(int index) {
    paymentOptionsModel.paymentOptionSelected(paymentOptionsModel.paymentOptions[index]);

    notifyListeners();
  }
}
