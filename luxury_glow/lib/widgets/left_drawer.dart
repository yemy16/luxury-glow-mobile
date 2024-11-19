import 'package:flutter/material.dart';
import 'package:luxury_glow/screens/list_productentry.dart';
import 'package:luxury_glow/screens/menu.dart';
import 'package:luxury_glow/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Luxury Glow',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 148, 105),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Embrace Your Radiance with Luxury Glow >_<",
                  textAlign: TextAlign.center, // Center alignment
                  style: TextStyle(
                    fontSize: 15.0, // Font size 15
                    color: Color.fromARGB(255, 31, 143, 91), // White color
                    fontWeight: FontWeight.normal, // Normal weight
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Daftar Produk'),
            onTap: () {
              // Route menu ke halaman produk
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}