import 'package:faturas/view_model/payment_options_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PaymentOptionsWidget extends StatelessWidget {

  final formatCurrency = new NumberFormat("#,##0.00", "pt_BR");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento da fatura'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Escolha o número de parcelas:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: _contentListView(),
            ),
            Divider(),
            SizedBox(
              height: 120,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Fatura de junho',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'R\$ 3.025,49',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Taxa da operação',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Consumer<PaymentOptionsViewModel>(
                            builder: (context, paymentOptionsViewModel, child) {
                              final transactionFee = formatCurrency.format(
                                  paymentOptionsViewModel
                                      .calculationTransactionFee());
                              return Text(
                                'R\$ $transactionFee',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                key: Key('tax'),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    child: Text(
                      'Voltar',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '1 de 3',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    child: Text(
                      'Continuar',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pinkAccent),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _contentListView() {
    return Consumer<PaymentOptionsViewModel>(
      builder: (context, paymentOptionsViewModel, child) {
        return SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: paymentOptionsViewModel.paymentOptionsModel.paymentOptions.length,
            itemBuilder: (context, index) {
              var indice = index + 1;
              var value = formatCurrency.format(paymentOptionsViewModel.paymentOptionsModel.paymentOptions[index].value);
              var total = formatCurrency.format(paymentOptionsViewModel.paymentOptionsModel.paymentOptions[index].total);
              var key = Key('$indice');

              return SizedBox(
                height: 70,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio(
                          value: indice,
                          groupValue: paymentOptionsViewModel
                              .paymentOptionsModel.selectedPaymentOption.number,
                          onChanged: (value) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return SpinKitFadingCircle(color: Colors.pinkAccent);
                              },
                              barrierDismissible: false,
                            );
                            Future.delayed(Duration(milliseconds: 1500), () {
                              Navigator.pop(context);
                              Provider.of<PaymentOptionsViewModel>(context,
                                  listen: false)
                                  .selectedPaymentOptions(index);
                            });
                          },
                          fillColor:
                              MaterialStateProperty.all<Color>(Colors.pinkAccent),
                          key: key,
                        ),
                        Text(
                          '$indice x R\$ $value',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'R\$ $total',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
