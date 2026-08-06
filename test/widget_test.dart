import 'package:flutter_test/flutter_test.dart';
import 'package:retail_app/Features/Home_nav/splash.dart';
import 'package:retail_app/Features/sign_in.dart';
import 'package:retail_app/main.dart';

void main() {
  testWidgets('shows splash screen before navigating to sign in', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(SplashScreen), findsOneWidget);

    await tester.pump(const Duration(seconds: 6));
    await tester.pumpAndSettle();

    expect(find.byType(SignIn), findsOneWidget);
    expect(find.text('Sign In'), findsNWidgets(2));
  });
}
