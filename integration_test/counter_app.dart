import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/common.dart';
import 'package:integration_test/integration_test.dart';

import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // verify the counter starts at 0
      expect(find.text('0'), findsOneWidget);

      // finds the floating action button to taps on
      final Finder fab = find.byTooltip('Increment');

      // Emulate a tap on the floating action button
      await tester.tap(fab);

      // trigger a frame
      await tester.pumpAndSettle();

      // verify the counter increments by 1
      expect(find.text('1'), findsOneWidget);
    });
  });
}
