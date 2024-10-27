import 'package:flutter/material.dart';
import 'package:web_app/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteClr,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Go back
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 40), // Placeholder for symmetry
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/profile1.jpg"), // Replace with your image path
              ),
              const SizedBox(height: 20),
              const Text(
                "Tanapon Phingchaiyaphum",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "s6507012660079@email.kmutnb.ac.th",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ListTile(
                      leading: Icon(Icons.account_box, color: colors.blClr),
                      title: const Text("Account"),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                      onTap: () {
                        // Navigate to Credits page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.account_balance_wallet, color: colors.blClr),
                      title: const Text("Credits"),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                      onTap: () {
                        // Navigate to Credits page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings, color: colors.blClr),
                      title: const Text("Settings"),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                      onTap: () {
                        // Navigate to Settings page
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.history, color: colors.blClr),
                      title: const Text("History"),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                      onTap: () {
                        // Navigate to History page
                      },
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add logout functionality
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors.grnClr,
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Log Out",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}