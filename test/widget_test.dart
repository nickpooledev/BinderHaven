import 'package:flutter_test/flutter_test.dart';
import 'package:binder_haven/app/features/library/presentation/pages/library_page.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('LibraryPage renders', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: LibraryPage(),
      ),
    );

    expect(find.byType(LibraryPage), findsOneWidget);
  });
}