import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Fatura(),
    );
  }
}

class Fatura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Faturas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Card(
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Última fatura',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'R\$ 3.025,49',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Vencimento 08/07/2019',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Vencida',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black87,
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text(
                      'Formas de Pagamento',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      'Boleto Bancário',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 50.0,
                  width: 400.0,
                  child: OutlinedButton(
                    child: Text(
                      'Copiar código de barras do boleto',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Alerta();
                        },
                        barrierDismissible: false,
                      );
                    },
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: OutlinedButton(
                    child: Text(
                      'Enviar boleto por e-mail',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Alerta();
                        },
                        barrierDismissible: false,
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text(
                      'Cartão de crédito',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: OutlinedButton(
                    child: Text('Pagar com cartão de crédito',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 16.0,
                        )),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text(
                            'Funcionalidade não implementada',
                            textDirection: TextDirection.ltr,
                          ),
                          actions: [
                            TextButton(
                              child: Text(
                                'OK',
                                textDirection: TextDirection.ltr,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        barrierDismissible: false,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Alerta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: Text(
        'Funcionalidade não implementada',
        textDirection: TextDirection.ltr,
      ),
      actions: [
        TextButton(
          child: Text(
            'OK',
            textDirection: TextDirection.ltr,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}