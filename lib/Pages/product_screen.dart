import 'package:flutter/material.dart';
import 'package:web_app/colors.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteClr,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black12
                      ),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black12
                      ),
                  ),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            ),
            Image.asset(
              "images/plant1.png",
              height: MediaQuery.of(context).size.width / 2,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Plant Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: colors.grnClr,
                    ),
                    Text(
                      "4.4",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Text(
                      "(5451 Reviews)",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                    ),
                    ),
                  ],
                ),

              ],
              ),
            ),
            SizedBox(height: 15),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "green above-ground plant organ. Its main functions are photosynthesis and gas exchange. A leaf is flat so it absorbs the most light, and thin, so that the sunlight can get to the chloroplasts in the cells. Most leaves have stomata, which open and close. They regulate carbon dioxide, oxygen, and water vapour exchange with the atmosphere",
             textAlign: TextAlign.justify,
             style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black54,
             ),
            ),
            ),
            SizedBox(height: 25),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Size",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    ),
                    SizedBox(height: 8),
                    Text("Medium",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),                  
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Plant",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Name"',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),                  
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Height",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '12.8"',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),                  
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Humldity",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '80%',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),                  
                  ],
                ),
              ],
            ),
            
            ),
          ],
          ),
      ),  
      bottomNavigationBar: Container(
        height: 90,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: colors.gryClr,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\120฿',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),     
            ],
          ),
        ),
      ),    
    );
  }
}