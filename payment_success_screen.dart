import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  final String method;

  const PaymentSuccessScreen({super.key, required this.method});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 120),
            const SizedBox(height: 20),
            Text("Bạn đã chọn: $method",
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            const Text("Thanh toán thành công!",
                style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
