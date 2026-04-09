import 'package:flutter/material.dart';

// ============================================================
// MEMBER 2 — YOUR JOB: Design Cart Screen
// ============================================================
// Instructions:
// 1. Clone the project: git clone git@github.com:Gitechcode/loginform.git
// 2. Switch to your branch: git checkout feature/cart
// 3. Open this file: lib/screens/cart_screen.dart
// 4. Replace the placeholder below with your design
// 5. Save, then run: flutter run
// 6. When done: git add . → git commit → git push
// ============================================================

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // TODO: Add your cart items list here
  // final List<Map<String, dynamic>> _cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              '[ Member 2: Design Cart Screen Here ]',
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
