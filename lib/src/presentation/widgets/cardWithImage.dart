import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add a subtle shadow to the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          // Background Image
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://bfsi.eletsonline.com/wp-content/uploads/2022/09/Bank-1.jpg'), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Colored Overlay
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black
                  .withOpacity(0.3), // Change overlay color and opacity
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          // Text Overlay
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Text(
              'Beautiful Sunset',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
