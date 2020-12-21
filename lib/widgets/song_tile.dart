import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final int index;
  final String imageUrl;

  const SongTile({
    this.index,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: double.infinity,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Sample$index',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Sample$index',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
