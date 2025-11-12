import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      {"title": "Transport", "amount": 45000},
      {"title": "Shopping", "amount": 125000},
      {"title": "Food", "amount": 80000},
    ];

    final total = data.fold<int>(0, (p, e) => p + (e['amount'] as int));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Laporan"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ringkasan Bulan Ini", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            ...data.map((d) => ListTile(
              leading: const Icon(Icons.pie_chart_outline, color: Colors.blueAccent),
              title: Text(d['title'] as String),
              trailing: Text("Rp${d['amount']}", style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            )).toList(),
            const Divider(),
            Text("Total Pengeluaran: Rp$total", style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
