import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: 'Sistema de Faturas',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Faturas'),
      ),
      body: Home(),
      backgroundColor: Colors.white70,
    ),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(
                  'Última fatura',
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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'R\$ 3.025,49',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'Vencimento 08/07/2019',
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
                  children: [
                    Text(
                      'Vencida',
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
              children: [
                Text(
                  'Formas de Pagamento',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Boleto Bancário',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: 400,
              child: OutlinedButton(
                child: Text(
                  'Copiar código de barras do boleto',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Funcionalidade não implementada'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
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
            SizedBox(height: 5),
            SizedBox(
              height: 50,
              width: 400,
              child: OutlinedButton(
                child: Text(
                  'Enviar boleto por e-mail',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Funcionalidade não implementada'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
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
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Cartão de crédito',
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
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Funcionalidade não implementada'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
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
    );
  }
}
