import 'package:flutter_test/flutter_test.dart';

import 'package:binder_haven/app/app.dart';

void main() {
  testWidgets('BinderHaven launches', (WidgetTester tester) async {
    await tester.pumpWidget(const BinderHavenApp());

    // Verify the splash screen appears first.
    expect(find.text('BinderHaven'), findsOneWidget);

    // Advance time so the splash timer completes.
    await tester.pump(const Duration(seconds: 2));

    // Finish the navigation animation.
    await tester.pumpAndSettle();

    // Verify we've reached the Home screen.
    expect(find.text('Welcome to BinderHaven'), findsOneWidget);
  });
}
