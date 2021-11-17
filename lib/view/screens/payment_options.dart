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
          create: (context) => PaymentOptionsModel(0.0, [], PaymentOption(1, 3180.00, 3025.49)),
        ),
        ChangeNotifierProvider(
          create: (context) => PaymentOptionsViewModel(),
        ),
      ],
      child: PaymentOptionsWidget(),
    );
  }
}
