import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/TambahBudget.dart';

class DataBudget extends StatelessWidget {
  const DataBudget({super.key});

  static const String _title = 'Data Budget';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        drawer: Drawer(
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
            ],
          ),
        ),
        appBar: AppBar(title: const Text(_title)),
        body: _DataBudgetState(),
      ),
    );
  }
}

class _DataBudgetState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> mywidgets = [];

    for (int x = 0; x < Tampil.dataMap.length; x++) {
      mywidgets.add(
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text("${Tampil.dataMap[x].judul} ()"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rp ${Tampil.dataMap[x].nominal}"),
                    Text(Tampil.dataMap[x].jenis),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Container(
        child: Column(children: mywidgets),
      ),
    );
  }
}
