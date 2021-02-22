import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic/neumorphic.dart';
// import 'screens/showcase.dart';
// import 'screens/check.dart';
// import 'screens/compare.dart';

void main() => runApp(MaterialApp(
    home:NeoApp()));

class NeoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color(0xffb3b3b3),
                      offset: Offset(
                        14,
                        14,
                      ),
                    ),
                    BoxShadow(
                      blurRadius: 10,
                      color: Color(0xffffffff),
                      offset: Offset(
                        -14,
                        -14,
                      ),
                    ),
                  ],
                  gradient: LinearGradient(
                    stops: [0, 1],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:
                    [Color(0xffffffff), Color(0xffe6e6e6)],
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(
                        57,
                      )
                  )
              ),
            child: Center(child: Text("this is new")),

          ),

      DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('19')),
              DataCell(Text('Student')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janine')),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
        ],
      ),
        ],
      ),
    );
  }
}
