import 'package:flutter/material.dart';

enum InvoicePaymentEnum {
  one,
  two,
  three,
  four,
  five,
  six,
}

class InvoicePayment extends StatelessWidget {
  InvoicePaymentEnum? _choose = InvoicePaymentEnum.one;

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
            SizedBox(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Radio(
                          value: InvoicePaymentEnum.one,
                          groupValue: _choose,
                          onChanged: (InvoicePaymentEnum? value) {
                            _choose = value;
                          }),
                      Text(
                        '1x R\$ 3.180,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'R\$ 3.180,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Radio(
                          value: InvoicePaymentEnum.two,
                          groupValue: _choose,
                          onChanged: (InvoicePaymentEnum? value) {
                            _choose = value;
                          }),
                      Text(
                        '2x R\$ 1630,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'R\$ 3.250,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Radio(
                          value: InvoicePaymentEnum.three,
                          groupValue: _choose,
                          onChanged: (InvoicePaymentEnum? value) {
                            _choose = value;
                          }),
                      Text(
                        '3x R\$ 1.086,67',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'R\$ 3.180,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Radio(
                          value: InvoicePaymentEnum.four,
                          groupValue: _choose,
                          onChanged: (InvoicePaymentEnum? value) {
                            _choose = value;
                          }),
                      Text(
                        '4x R\$ 3.180,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'R\$ 3.180,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Radio(
                          value: InvoicePaymentEnum.five,
                          groupValue: _choose,
                          onChanged: (InvoicePaymentEnum? value) {
                            _choose = value;
                          }),
                      Text(
                        '5x R\$ 662,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'R\$ 3.310,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Radio(
                          value: InvoicePaymentEnum.six,
                          groupValue: _choose,
                          onChanged: (InvoicePaymentEnum? value) {
                            _choose = value;
                          }),
                      Text(
                        '6x R\$ 551,67',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'R\$ 3.310,00',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
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
}
