import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/Pages/barcode_screen.dart';
import 'package:web_app/Pages/product_screen.dart';
import 'package:web_app/Pages/favoritesPage.dart';
import 'package:web_app/Pages/profile_screen.dart';
import 'package:web_app/Pages/shoping_screen.dart'; // Make sure this import is correct
import '../colors.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Indoor",
    "Outdoor",
    "Popular",
    "Succulents",
    "Trees",
  ];

  final List<String> plants = [
    "plant1.png",
    "plant2.png",
    "plant3.png",
    "plant4.png",
  ];

  final List<String> plantPrices = [
    "120฿",
    "150฿",
    "300฿",
    "200฿",
  ];

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
                    const Text(
                      "Find your \nfavorite plants",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: colors.gryClr,
                            hintText: 'Search...',
                            hintStyle: const TextStyle(color: Colors.black54),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: const Icon(Icons.search, color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              buildPromotionBanner(context),
              const SizedBox(height: 20),
              buildCategoryList(),
              const SizedBox(height: 20),
              buildPlantList(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  Widget buildPromotionBanner(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colors.grn2Clr,
            ),
          ),
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "50% SALE OFF HOLIDAY",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "10-25 December",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Image.asset("images/plant.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryList() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: index == 0 ? Colors.black : Colors.black26,
              ),
              color: index == 0 ? colors.grn2Clr : Colors.white,
            ),
            child: Center(
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: index == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPlantList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 350,
        child: PageView.builder(
          itemCount: plants.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 15, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colors.gryClr,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ProductScreen()),
                              );
                            },
                            child: Image.asset("images/${plants[index]}"), // Dynamically load plant images
                          ),
                        ),
                        Positioned(
                          left: 15,
                          top: 15,
                          child: Text(
                            "${plantPrices[index]}", // Dynamically load plant prices
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: colors.blClr,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigate to ShoppingScreen when "Add to Cart" is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ShoppingScreen()),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontSize: 16,
                                color: colors.blClr,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors.blClr,
                          ),
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return Container(
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
            child: Icon(CupertinoIcons.home, color: Colors.black54),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoritesScreen()),
              );
            },
            child: Icon(Icons.favorite_outline, color: Colors.black54),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BarcodeScreen()),
              );
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
              child: Icon(CupertinoIcons.qrcode, color: Colors.white54),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()),
              );
            },
            child: Icon(Icons.shopping_bag_outlined, color: Colors.black54),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Icon(CupertinoIcons.person, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}