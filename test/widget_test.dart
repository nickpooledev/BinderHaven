import 'package:flutter_test/flutter_test.dart';

import 'package:binder_haven/app/app.dart';

void main() {
  testWidgets('BinderHaven launches', (WidgetTester tester) async {
    await tester.pumpWidget(const BinderHavenApp());

    expect(find.text('BinderHaven'), findsOneWidget);
  });
}