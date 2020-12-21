import 'package:flutter/material.dart';

class LibraryListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function tapHandler;

  const LibraryListTile({
    this.title,
    this.icon,
    this.tapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: Colors.redAccent.shade200,
            size: 28,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.grey[400],
          ),
          onTap: tapHandler,
        ),
        Divider(
          height: 0.0,
        ),
      ],
    );
  }
}
