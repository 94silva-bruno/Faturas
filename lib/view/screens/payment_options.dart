import 'package:faturas/model/payment_option.dart';
import 'package:faturas/model/payment_options_model.dart';
import 'package:faturas/view/widgets/payment_options_widget.dart';
import 'package:faturas/view_model/payment_options_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PaymentOptionsModel(3025.49,
              [
                PaymentOption(1, 3180.00, 3180.00),
                PaymentOption(2, 1630.00, 3260.00),
                PaymentOption(3, 1086.67, 3260.00),
                PaymentOption(4, 815.00, 3260.00),
                PaymentOption(5, 662.00, 3310.00),
                PaymentOption(6, 551.67, 3310.00)
              ],
              PaymentOption(1, 3180.00, 3180.00)),
        ),
        ChangeNotifierProvider(
          create: (context) => PaymentOptionsViewModel(),
        ),
      ],
      child: PaymentOptionsWidget(),
    );
  }
}
