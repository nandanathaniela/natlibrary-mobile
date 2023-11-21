import 'package:flutter/material.dart';
import 'package:natlibrary/screens/menu.dart';
import 'package:natlibrary/screens/shoplist_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:natlibrary/screens/shoplist_form.dart';
import 'package:flutter/material.dart';
import 'package:natlibrary/screens/list_product.dart';
import 'package:natlibrary/screens/login.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: item.color, // Menggunakan warna yang telah ditentukan
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

            if (item.name == "Tambah Buku") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ShopFormPage()));
            }
            else if (item.name == "Lihat Buku") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProductPage()));
            } 
            else if (item.name == "Logout") {
                final response = await request.logout(
                    "http://127.0.0.1:8000/auth/logout/");
                String message = response["message"];
                if (response['status']) {
                  if(context.mounted){

                  String uname = response["username"];
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$message Sampai jumpa, $uname."),
                  ));
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );

                  }
                } else {
                  
                  if(context.mounted){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(message),
                    ));
                    
                  }
                }
              }
            },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 50.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}