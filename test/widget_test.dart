import 'package:faturas/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test my widget Home', (WidgetTester tester) async {

    await tester.pumpWidget(Home());

    // Find text in widget
    expect(find.text('Última fatura'), findsOneWidget);
    expect(find.text('R\$ 3.025,49'), findsOneWidget);
    expect(find.text('Vencimento 08/07/2019'), findsOneWidget);
    expect(find.text('Vencida'), findsOneWidget);
    expect(find.text('Formas de Pagamento'), findsOneWidget);
    expect(find.text('Boleto Bancário'), findsOneWidget);
    expect(find.text('Copiar código de barras do boleto'), findsOneWidget);
    expect(find.text('Cartão de crédito'), findsOneWidget);
    expect(find.text('Pagar com cartão de crédito'), findsOneWidget);
    
    await tester.tap(find.widgetWithText(OutlinedButton, 'Copiar código de barras do boleto'));
    await tester.pumpAndSettle();
    
    expect(find.text('Funcionalidade não implementada'), findsOneWidget);

    await tester.tap(find.widgetWithText(TextButton, 'OK'));
    await tester.pumpAndSettle();

    await tester.tap(find.widgetWithText(OutlinedButton, 'Enviar boleto por e-mail'));
    await tester.pumpAndSettle();

    expect(find.text('Funcionalidade não implementada'), findsOneWidget);

    await tester.tap(find.widgetWithText(TextButton, 'OK'));
    await tester.pumpAndSettle();

    await tester.tap(find.widgetWithText(OutlinedButton, 'Pagar com cartão de crédito'));
    await tester.pumpAndSettle();

    expect(find.text('Funcionalidade não implementada'), findsOneWidget);

    await tester.tap(find.widgetWithText(TextButton, 'OK'));
    await tester.pumpAndSettle();
  });
}
