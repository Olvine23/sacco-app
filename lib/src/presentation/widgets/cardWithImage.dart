import 'package:flutter/material.dart';

class CardWithImage extends StatelessWidget {
  final String customText;

  const CardWithImage({super.key, required this.customText});
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
                    'https://cdn.pixabay.com/photo/2016/03/31/21/41/cash-1296584_1280.png'), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Colored Overlay
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xff3D6ADA)
                  .withOpacity(0.7), // Change overlay color and opacity
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          // Text Overlay
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
               customText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
