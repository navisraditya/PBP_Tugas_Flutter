import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/TambahBudget.dart';
import 'package:counter_7/page/MyWatchlist.dart';

import '../model/DataBudget.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'counter_7')),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TambahBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DataBudget()));
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  Navigator.pushReplacement( 
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const MyWatchlist()));
                },
              )
            ],
          ),
    );
  }
}