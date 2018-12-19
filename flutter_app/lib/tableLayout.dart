import 'package:flutter/material.dart';

class FlowDemo extends StatelessWidget{
  double flowWidth = 80.0;
  double flowHeight = 60.0;
  @override
  Widget build(BuildContext context) {
    return Table(
        columnWidths: <int, TableColumnWidth>{
          0: FixedColumnWidth(50.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(50.0),
          3: FixedColumnWidth(100.0),
          4: FixedColumnWidth(200.0),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
        border: TableBorder.all(color: Colors.red, width: 1.0, style: BorderStyle.solid),
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              Text('A1'),
              Text('B1'),
              Text('C1'),
              Text('D1'),
              Text('E1'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A2'),
              Text('B2'),
              Text('C2'),
              Text('D2'),
              Text('E2'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A3'),
              Text('B3'),
              Text('C3'),
              Text('D3'),
              Text('E3'),
            ],
          ),
          TableRow(
            children: <Widget>[
              Text('A4'),
              Text('B4'),
              Text('C4'),
              Text('D4'),
              Text('E4'),
            ],
          ),
        ],
      );
  }
}
