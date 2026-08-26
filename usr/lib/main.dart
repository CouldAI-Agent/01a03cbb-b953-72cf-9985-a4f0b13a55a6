import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/dashboard/dashboard_screen.dart';
import 'screens/booking/doctor_search_screen.dart';
import 'screens/booking/payment_slip_screen.dart';
import 'screens/history/medical_history_screen.dart';
import 'screens/reminders/reminders_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediCare App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/search': (context) => const DoctorSearchScreen(),
        '/payment': (context) => const PaymentSlipScreen(),
        '/history': (context) => const MedicalHistoryScreen(),
        '/reminders': (context) => const RemindersScreen(),
      },
    );
  }
}
