import 'package:flutter/material.dart';

// ============================================================
// MEMBER 3 — YOUR JOB: Design Payment Form Screen
// ============================================================
// Instructions:
// 1. Clone the project: git clone git@github.com:Gitechcode/loginform.git
// 2. Switch to your branch: git checkout feature/payment
// 3. Open this file: lib/screens/payment_screen.dart
// 4. Replace the placeholder below with your design
// 5. Save, then run: flutter run
// 6. When done: git add . → git commit → git push
// ============================================================

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // TODO: Add your payment form controllers here
  // final _cardNumberController = TextEditingController();
  // final _expiryController = TextEditingController();
  // final _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.payment_outlined, size: 80, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              '[ Member 3: Design Payment Form Here ]',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Replace this placeholder with your design',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
