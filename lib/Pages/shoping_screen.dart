import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_app/Pages/HomeScreen.dart';
import 'package:web_app/colors.dart';
import 'package:web_app/Pages/favoritesPage.dart';
import 'package:web_app/Pages/profile_screen.dart';
import 'package:web_app/Pages/product_screen.dart';
import 'package:web_app/Pages/finish_buy_screen.dart'; // Import the Finish Buy screen

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  List<Map<String, dynamic>> cartItems = [
    {"name": "Plant Indoor", "price": "120฿", "image": "images/plant1.png"},
    {"name": "Plant Outdoor", "price": "150฿", "image": "images/plant2.png"},
    {"name": "Plant Popular", "price": "300฿", "image": "images/plant3.png"},
  ];

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteClr,
      body: SafeArea(
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
                    "Shopping Cart",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 40), // Placeholder for symmetry
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductScreen()), // Navigate to product details
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colors.gryClr,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                cartItems[index]["image"],
                                height: 80,
                              ),
                              const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItems[index]["name"],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    cartItems[index]["price"],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline, color: Colors.black54),
                            onPressed: () {
                              removeItem(index); // Remove item from cart
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Checkout Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FinishBuyScreen()), // Navigate to Finish Buy screen
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors.blClr,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: colors.gryClr,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(
                CupertinoIcons.home,
                color: Colors.black54,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()),
                );
              },
              child: Icon(
                Icons.favorite_outline,
                color: Colors.black54,
              ),
            ),
            InkWell(
              onTap: () {
                // Stay on Shopping page
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.blClr,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: const Icon(
                  CupertinoIcons.shopping_cart,
                  color: Colors.white54,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
              child: Icon(
                CupertinoIcons.person,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}