import 'package:binder_haven/app/app.dart';
import 'package:binder_haven/app/features/home/presentation/home_page.dart';
import 'package:binder_haven/app/features/splash/presentation/splash_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BinderHaven launches', (WidgetTester tester) async {
    await tester.pumpWidget(const BinderHavenApp());

    // Verify the splash screen is shown.
    expect(find.byType(SplashPage), findsOneWidget);

    // Wait for the splash animation/navigation.
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // Verify we've navigated to the home page.
    expect(find.byType(HomePage), findsOneWidget);
  });
}
