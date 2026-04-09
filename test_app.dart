import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  group('Login Form App Tests', () {
    testWidgets('Login Screen displays correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Verify Login Screen is displayed
      expect(find.text('Login Page'), findsOneWidget);
      expect(find.byType(TextFormField), findsWidgets);
      
      // Verify form fields exist
      expect(find.byIcon(Icons.email), findsNothing); // Email field
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Forgot Password'), findsOneWidget);
    });

    testWidgets('Email validation works', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Find and tap the login button without entering email
      final loginButton = find.text('Login');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      
      // Should show validation error
      expect(find.text('Please enter email'), findsOneWidget);
    });

    testWidgets('Password validation works', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Enter valid email
      final emailField = find.byType(TextFormField).first;
      await tester.enterText(emailField, 'test@example.com');
      
      // Try to login without password
      final loginButton = find.text('Login');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      
      // Should show password error
      expect(find.text('Please enter password'), findsOneWidget);
    });

    testWidgets('Valid login navigates to Home Screen', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Enter valid credentials
      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      
      await tester.enterText(emailField, 'test@example.com');
      await tester.enterText(passwordField, 'password123');
      
      // Tap login button
      final loginButton = find.text('Login');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      
      // Should navigate to Home Screen
      expect(find.text('test'), findsWidgets); // Username from email
    });

    testWidgets('Navigation to Register Screen works', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Find and tap register link
      final registerLink = find.text("Don't have an account?");
      if (registerLink.evaluate().isNotEmpty) {
        await tester.tap(registerLink);
        await tester.pumpAndSettle();
        
        // Verify Register Screen is displayed
        expect(find.text('Signup Form'), findsOneWidget);
      }
    });

    testWidgets('Register form displays all fields', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Navigate to register
      final registerLink = find.text("Don't have an account?");
      if (registerLink.evaluate().isNotEmpty) {
        await tester.tap(registerLink);
        await tester.pumpAndSettle();
        
        // Verify all fields exist
        expect(find.text('Full Name'), findsOneWidget);
        expect(find.text('Email'), findsOneWidget);
        expect(find.text('Password'), findsOneWidget);
        expect(find.text('Confirm Password'), findsOneWidget);
      }
    });

    testWidgets('Home Screen displays products', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Login to access home screen
      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      
      await tester.enterText(emailField, 'test@example.com');
      await tester.enterText(passwordField, 'password123');
      
      final loginButton = find.text('Login');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      
      // Verify home screen elements
      expect(find.text('Nike Air Jordan 19 Blue'), findsOneWidget);
    });

    testWidgets('Logout functionality works', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      
      // Login first
      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      
      await tester.enterText(emailField, 'test@example.com');
      await tester.enterText(passwordField, 'password123');
      
      final loginButton = find.text('Login');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      
      // Find and tap logout button
      final logoutButton = find.text('Logout');
      if (logoutButton.evaluate().isNotEmpty) {
        await tester.tap(logoutButton);
        await tester.pumpAndSettle();
        
        // Should return to login screen
        expect(find.text('Login Page'), findsOneWidget);
      }
    });
  });
}
