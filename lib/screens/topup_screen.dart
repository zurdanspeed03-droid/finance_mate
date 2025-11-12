import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final methods = [
      {"icon": Icons.account_balance, "label": "Bank Transfer"},
      {"icon": Icons.qr_code, "label": "QRIS"},
      {"icon": Icons.mobile_friendly, "label": "E-Wallet"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Up"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pilih Metode", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            ...methods.map((m) => Card(
              child: ListTile(
                leading: Icon(m['icon'] as IconData, color: Colors.blueAccent),
                title: Text(m['label'] as String),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${m['label']} belum aktif (dummy)"))),
              ),
            )).toList(),
          ],
        ),
      ),
    );
  }
}
