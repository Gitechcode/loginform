import 'package:flutter/material.dart';

// ============================================================
// MEMBER 4 — YOUR JOB: Design Product Detail Screen
// ============================================================
// Instructions:
// 1. Clone the project: git clone git@github.com:Gitechcode/loginform.git
// 2. Switch to your branch: git checkout feature/product-detail
// 3. Open this file: lib/screens/product_detail_screen.dart
// 4. Replace the placeholder below with your design
// 5. Save, then run: flutter run
// 6. When done: git add . → git commit → git push
// ============================================================

class ProductDetailScreen extends StatefulWidget {
  final Map<String, dynamic>? product;
  const ProductDetailScreen({super.key, this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  // TODO: Design product detail page
  // Show: product image, name, price, description, sizes, Add to Cart button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.inventory_2_outlined, size: 80, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              '[ Member 4: Design Product Detail Here ]',
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
