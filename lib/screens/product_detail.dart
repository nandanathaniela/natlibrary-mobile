import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  final String name;
  final int price;
  final String description;
  final DateTime dateAdded;
  final String imageUrl;

  ItemDetailPage({
    required this.name,
    required this.price,
    required this.description,
    required this.dateAdded,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            SizedBox(height: 16),
            Text('Name: $name', style: TextStyle(fontSize: 18)),
            Text('Price: $price', style: TextStyle(fontSize: 18)),
            Text('Description: $description', style: TextStyle(fontSize: 18)),
            Text('Date Added: ${dateAdded.toLocal()}',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Kembali ke halaman daftar item
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
