import 'package:flutter/material.dart';

class ATMCard extends StatelessWidget {
  final String bankName;
  final String balance;
  final String image;
  final String cardNumber;

  const ATMCard({
    super.key,
    required this.bankName,
    required this.balance,
    required this.image,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 40),
          const SizedBox(height: 10),
          Text(bankName, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(balance, style: const TextStyle(fontSize: 16)),
          Text(cardNumber, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
