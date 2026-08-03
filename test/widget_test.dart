import 'package:flutter_test/flutter_test.dart';
import 'package:binder_haven/app/features/dashboard/presentation/dashboard_page.dart';
import 'package:binder_haven/app/app.dart';

void main() {
  testWidgets('BinderHaven launches', (WidgetTester tester) async {
    await tester.pumpWidget(const BinderHavenApp());

    // Wait for the splash animation and navigation.
    await tester.pump(const Duration(milliseconds: 2500));
    await tester.pumpAndSettle();

    expect(find.byType(DashboardPage), findsOneWidget);
  });
}
