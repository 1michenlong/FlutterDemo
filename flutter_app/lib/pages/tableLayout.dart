import 'package:flutter/material.dart';

class FlowDemo extends StatelessWidget{
  double flowWidth = 80.0;
  double flowHeight = 60.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        color: Colors.white,
        child: Table(
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
                  textSty('A1'),
                  textSty('B1'),
                  textSty('C1'),
                  textSty('D1'),
                  textSty('E1'),
                ],
              ),
              TableRow(
                children: <Widget>[
                  textSty('A2'),
                  textSty('B2'),
                  textSty('C2'),
                  textSty('D2'),
                  textSty('E2'),
                ],
              ),
              TableRow(
                children: <Widget>[
                  textSty('A3'),
                  textSty('B3'),
                  textSty('C3'),
                  textSty('D3'),
                  textSty('E3'),
                ],
              ),
              TableRow(
                children: <Widget>[
                  textSty('A4'),
                  textSty('B4'),
                  textSty('C4'),
                  textSty('D4'),
                  textSty('E4'),
                ],
              ),
            ],
          ),
      ),
    );
  }
}

Text textSty(String content){
  return Text(content,style: TextStyle(fontSize: 15.0,color: Colors.black,inherit: false),);
}
