import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:natlibrary/models/product.dart';
import 'package:natlibrary/widgets/left_drawer.dart';
import 'package:natlibrary/screens/product_detail.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {
    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> listProduct = [];
    for (var d in data) {
        if (d != null) {
            listProduct.add(Product.fromJson(d));
        }
    }
    return listProduct;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Daftar Buku'),
          ),
          backgroundColor: Colors.pink.shade900,
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada buku.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => GestureDetector(
                          onTap: () {
                            // Navigasi ke halaman detail saat item ditekan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemDetailPage(
                                  name: snapshot.data![index].fields.name,
                                  price: snapshot.data![index].fields.price,
                                  description:
                                      snapshot.data![index].fields.description,
                                  dateAdded:
                                      snapshot.data![index].fields.dateAdded,
                                  imageUrl:
                                      snapshot.data![index].fields.imageUrl,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("Price : ${snapshot.data![index].fields.price}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "Description : ${snapshot.data![index].fields.description}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "Date Added : ${snapshot.data![index].fields.dateAdded}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "Image : ${snapshot.data![index].fields.imageUrl}")
                                ],
                                ),
                            )));
                    }
                }
            }));
    }
}