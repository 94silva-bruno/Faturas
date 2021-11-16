import 'package:faturas/model/payment_option.dart';
import 'package:faturas/view_model/payment_options_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentOptionsScreen extends StatefulWidget {
  @override
  PaymentOptionsScreenState createState() {
    return PaymentOptionsScreenState();
  }
}

class PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  int _amountInstallments = 1;
  String _transactionFee = '154.51';
  PaymentOptionsViewModel _paymentOptionsViewModel = PaymentOptionsViewModel();
  final formatCurrency = new NumberFormat("#,##0.00", "pt_BR");

  void selectedChoose(int amountInstallments) {
    setState(() {
      _amountInstallments = amountInstallments;
      _transactionFee = formatCurrency.format(_paymentOptionsViewModel
          .calculationTransactionFee(amountInstallments)) ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento da fatura'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Escolha o número de parcelas: ',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            _contentListView(context,
                _paymentOptionsViewModel.paymentOptionsModel!.paymentOptions),
            SizedBox(
              height: 140,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Spacer(),
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
                          Text(
                            'R\$ $_transactionFee',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
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
                        color: Colors.blue,
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
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _contentListView(
      BuildContext context, List<PaymentOption> listPaymentOption) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listPaymentOption.length,
      itemBuilder: (context, index) {
        var indice = index + 1;
        var value = formatCurrency.format(listPaymentOption[index].value);
        var total = formatCurrency.format(listPaymentOption[index].total);

        return SizedBox(
          height: 70,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Radio(
                    value: indice,
                    groupValue: _amountInstallments,
                    onChanged: (value) {
                      setState(() {
                        selectedChoose(value as int);
                      });
                    },
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
    );
  }
}
