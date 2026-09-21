import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:student_connect/screens/login_screen.dart';

void main() {
  testWidgets('Login screen displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );

    expect(find.text('StudentConnect'), findsOneWidget);
    expect(find.text('Welcome back 👋'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(
      find.text("Don't have an account? Register"),
      findsOneWidget,
    );
  });

  testWidgets('User can navigate from login to registration screen',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: LoginScreen(),
          ),
        );

        await tester.tap(
          find.text("Don't have an account? Register"),
        );

        await tester.pumpAndSettle();

        expect(find.text('Create Account'), findsOneWidget);
        expect(find.text('Join StudentConnect 🎓'), findsOneWidget);
        expect(find.text('Name'), findsOneWidget);
        expect(find.text('Email'), findsOneWidget);
        expect(find.text('Password'), findsOneWidget);
        expect(find.text('Register'), findsOneWidget);
      });
}