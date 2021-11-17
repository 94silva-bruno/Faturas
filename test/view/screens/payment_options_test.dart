import 'package:faturas/view/screens/payment_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('Test rendering widget and select number of installments to update the value', () {
    testWidgets('Test rendering widget', (WidgetTester tester) async {
      Widget testWidget = MaterialApp(home: PaymentOptionsScreen());

      await tester.pumpWidget(testWidget);
      
      await tester.pumpAndSettle();

      expect(find.text('Escolha o número de parcelas:'), findsOneWidget);
    });

    testWidgets('Test select number of installments to update the value', (WidgetTester tester) async {
      Widget testWidget = MaterialApp(home: PaymentOptionsScreen());

      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('2')));

      await tester.pumpAndSettle();

      expect(find.byKey(Key('tax')).toString().contains('234,51'), true);
    });
  });
}