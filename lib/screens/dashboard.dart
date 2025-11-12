import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_item.dart';
import '../widgets/atm_card.dart';
import '../widgets/grid_menu_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TransactionModel> transactions = [
      TransactionModel(
        title: 'Coffee Shop',
        subtitle: 'Food & Drink',
        amount: '-Rp35.000',
        iconPath: 'assets/icons/coffee.png',
      ),
      TransactionModel(
        title: 'Grab Ride',
        subtitle: 'Transportation',
        amount: '-Rp25.000',
        iconPath: 'assets/icons/car.png',
      ),
      TransactionModel(
        title: 'Gym Membership',
        subtitle: 'Health',
        amount: '-Rp150.000',
        iconPath: 'assets/icons/gym.png',
      ),
      TransactionModel(
        title: 'Movie Ticket',
        subtitle: 'Entertainment',
        amount: '-Rp60.000',
        iconPath: 'assets/icons/movie.png',
      ),
      TransactionModel(
        title: 'Salary',
        subtitle: 'Income',
        amount: '+Rp5.000.000',
        iconPath: 'assets/icons/money.png',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==== HEADER ====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Finance Mate",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F1F1F),
                    ),
                  ),
                  CircleAvatar( // ❌ hapus const
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Halo, Caca 👋",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),

              // ==== TOTAL BALANCE ====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6C63FF), Color(0xFF7859F0)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Rp45.100.000",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // ==== MY CARDS ====
              const Text(
                "My Cards",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ATMCard( // ❌ hapus const
                      bankName: "Bank BRI",
                      balance: "Rp12.500.000",
                      image: "assets/images/bri.png",
                      cardNumber: "**** 2245",
                    ),
                    const SizedBox(width: 12),
                    ATMCard( // ❌ hapus const
                      bankName: "Bank BJB",
                      balance: "Rp5.350.000",
                      image: "assets/images/bjb.png",
                      cardNumber: "**** 8765",
                    ),
                    const SizedBox(width: 12),
                    ATMCard( // ❌ hapus const
                      bankName: "Bank Mandiri",
                      balance: "Rp8.200.000",
                      image: "assets/images/mandiri.png",
                      cardNumber: "**** 4567",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // ==== QUICK ACCESS ====
              const Text(
                "Quick Access",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GridMenuItem(icon: Icons.favorite, title: "Health", onTap: () {}),
                  GridMenuItem(icon: Icons.flight, title: "Travel", onTap: () {}),
                  GridMenuItem(icon: Icons.fastfood, title: "Food", onTap: () {}),
                  GridMenuItem(icon: Icons.event, title: "Event", onTap: () {}),
                ],
              ),
              const SizedBox(height: 25),

              // ==== RECENT TRANSACTIONS ====
              const Text(
                "Recent Transactions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              Column(
                children: transactions
                    .map((tx) => TransactionItem(transaction: tx))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF6C63FF),
        child: const Icon(Icons.add, size: 28),
      ),
    );
  }
}
