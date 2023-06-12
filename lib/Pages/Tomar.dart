import 'package:alpha/Pages/Thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:alpha/Components/Palette.dart';

class Tomarpage extends StatefulWidget {
  const Tomarpage({super.key});

  @override
  State<Tomarpage> createState() => _TomarpageState();
}

class _TomarpageState extends State<Tomarpage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:
    Scaffold(
       appBar: AppBar(
        title: Center(
          child: Text(" تۆماری ئامادەبوون ",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
        backgroundColor: Palette.alphacolor,
        elevation: 0,
             actions: [
            IconButton(
          onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Thirdpage()));
          },
           icon: Icon(MdiIcons.arrowLeft)),
           ],
      ),
      body: MyDataTable(),
    )
    );
  }
}
class MyDataTable extends StatefulWidget {
  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  List<DataRow> rows = [
    DataRow(cells: [
      DataCell(Text('١٨٤٢٢٧')),
      DataCell(Text('محمد عادل مەحمود')),
      DataCell(Text('تیم ٢')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('سلێمانی')),
    ]),
    DataRow(cells: [
      DataCell(Text('١٩٧٢٥٦')),
      DataCell(Text('چۆمان ئارام')),
      DataCell(Text('تیم ٣')),
      DataCell(Text('ئامادەنیە')),
      DataCell(Text('سلێمانی')),
    ]),
    DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
            DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
            DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),        DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
            DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
                DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
                DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
                DataRow(cells: [
      DataCell(Text('١٩٨٢٨٧')),
      DataCell(Text('مارکۆ ئاسۆ')),
      DataCell(Text('تیم ١')),
      DataCell(Text('ئامادەیە')),
      DataCell(Text('هەولێر')),
    ]),
  ];

  bool ascending = true;
  int sortColumnIndex = 0;

  void onSort(int columnIndex, bool ascending) {
    setState(() {
      sortColumnIndex = columnIndex;
      this.ascending = ascending;

      rows.sort((a, b) {
        String aValue = a.cells[columnIndex].child.toString();
        String bValue = b.cells[columnIndex].child.toString();
        return ascending ? aValue.compareTo(bValue) : bValue.compareTo(aValue);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:
   Scaffold(
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: 
            DataTable(
              sortAscending: ascending,
              sortColumnIndex: sortColumnIndex,
              columns: [
                DataColumn(
                  label: Text('ژمارەی پێناس'),
                  onSort: (columnIndex, ascending) {
                    onSort(columnIndex, ascending);
                  },
                ),
                DataColumn(
                  label: Text('ناوی چواری'),
                  onSort: (columnIndex, ascending) {
                    onSort(columnIndex, ascending);
                  },
                ),
                DataColumn(
                  label: Text('تیم'),
                  onSort: (columnIndex, ascending) {
                    onSort(columnIndex, ascending);
                  },
                ),
                DataColumn(
                  label: Text('ئامادەبوون'),
                  onSort: (columnIndex, ascending) {
                    onSort(columnIndex, ascending);
                  },
                ),
                DataColumn(
                  label: Text('ناونیشان'),
                  onSort: (columnIndex, ascending) {
                    onSort(columnIndex, ascending);
                  },
                ),
              ],
              rows: rows,
            ),
          ),
        ),
      ),
    );
  }
}