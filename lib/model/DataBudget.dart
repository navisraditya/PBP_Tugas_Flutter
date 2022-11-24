import 'package:flutter/material.dart';
import 'package:counter_7/model/TambahBudget.dart';
import 'package:counter_7/utils/drawer.dart';

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});
  
  @override
  State<DataBudget> createState() => _DataBudgetState();

}

class _DataBudgetState extends State<DataBudget> {
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
                title: Text("${Tampil.dataMap[x].judul}"),
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
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: drawer(),
      body: Column(children: mywidgets),
    );
  }
}
