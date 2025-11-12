import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final _accController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _accController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _send() {
    if (_accController.text.isEmpty || _amountController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Lengkapi data transfer")));
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Transfer ke ${_accController.text} sejumlah Rp${_amountController.text} (dummy)")));
    _accController.clear();
    _amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _accController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Nomor Rekening", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Jumlah (Rp)", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _send,
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              child: Text("Kirim", style: GoogleFonts.poppins(fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
