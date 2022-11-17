import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
      final List<dynamic> product = [
        {'name':'Coca-cola',
        'description':'500ml',
        'pcompra':'2.00',
        'pventa':'3.50'
        },
        {'name':'Inka-cola',
        'description':'500ml',
        'pcompra':'2.50',
        'pventa':'4.80'
        },
        {'name':'Fanta',
        'description':'500ml',
        'pcompra':'2.00',
        'pventa':'4.50'
        },
        {'name':'Kola-Inglesa',
        'description':'500ml',
        'pcompra':'3.00',
        'pventa':'3.50'
        },
      ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('table'),
        centerTitle: true,
      ),
      body: DataTable(
        border: TableBorder.all(color: Colors.white),
        columns: const[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('description')),
          DataColumn(label: Text('pcompra')),
          DataColumn(label: Text('pventa')),
        ], 
        rows: product.map((e) => 
        DataRow(cells: [
          DataCell(Text(e['name'])),
          DataCell(Text(e['description'])),
          DataCell(Text(e['pcompra'])),
          DataCell(Text(e['pventa'])),
        ])
        ).toList()
      ),
    );
  }
}