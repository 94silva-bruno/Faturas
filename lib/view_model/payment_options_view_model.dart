import 'package:faturas/model/payment_option.dart';
import 'package:faturas/model/payment_options_model.dart';

class PaymentOptionsViewModel {

  PaymentOptionsModel? _paymentOptionsModel;

  PaymentOptionsViewModel() {
    PaymentOption paymentOption1 = PaymentOption(1, 3180.00, 3025.49);
    PaymentOption paymentOption2 = PaymentOption(2, 1630.00, 3025.49);
    PaymentOption paymentOption3 = PaymentOption(3, 1086.67, 3025.49);
    PaymentOption paymentOption4 = PaymentOption(4, 815.00, 3025.49);
    PaymentOption paymentOption5 = PaymentOption(5, 662.00, 3025.49);
    PaymentOption paymentOption6 = PaymentOption(6, 551.67, 3025.49);

    _paymentOptionsModel = PaymentOptionsModel(3025.49, [paymentOption1, paymentOption2, paymentOption3, paymentOption4, paymentOption5, paymentOption6]);
  }

  double calculationTransactionFee(int amountInstallments) {

    var transactionFee = 0.0;

    var total = _paymentOptionsModel!.paymentOptions[amountInstallments - 1].total;
    var value = _paymentOptionsModel!.paymentOptions[amountInstallments - 1].value;

    transactionFee = (amountInstallments * value) - total;

    return transactionFee;
  }

  PaymentOptionsModel? get paymentOptionsModel => _paymentOptionsModel;
}