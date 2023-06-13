import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:alpha/Components/Palette.dart';
import 'dart:typed_data';
import 'package:alpha/db/connection.dart';

class Reportpage extends StatefulWidget {
  const Reportpage({super.key});

  @override
  State<Reportpage> createState() => _ReportpageState();
}

var conn;

class _ReportpageState extends State<Reportpage> {
  List<dynamic> results = [];

  getData() async {
    try {
      conn = await PostgresConnection.getConnection();
      // print("connected");
      results = await conn.mappedResultsQuery('SELECT * FROM user_reg');
      print("result = " + results.toString());

      setState(() {});

      return results;
      // ...
    } catch (e) {
      // ...
    } finally {
      print("closing connection");
      await conn.close();
    }
    // This block will always execute
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // print("here : " + results.toString());

    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text(results[0]['user_reg']['full_name'].toString()),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(results[index]['user_reg']['full_name'].toString()),
            );
          },
        ),
      ),

    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Center(
    //       child: Text(
    //         " پیشاندانی ڕاپۆرت ",
    //         style: TextStyle(
    //           fontSize: 18,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     backgroundColor: Palette.alphacolor,
    //     elevation: 0,
    //   ),
    //   body: FutureBuilder<List<Map<String, dynamic>>>(
    //     future: getData(),
    //     builder: (BuildContext context,
    //         AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
    //       if (snapshot.hasData) {
    //         return ListView.builder(
    //           itemCount: snapshot.data.length,
    //           itemBuilder: (BuildContext context, int index) {
    //             final item = snapshot.data[index];
    //             return ListTile(
    //               title: Text(item['title']),
    //               subtitle: Text(item['subtitle']),
    //             );
    //           },
    //         );
    //       } else if (snapshot.hasError) {
    //         return Text('${snapshot.error}');
    //       }

    //       return const Center(child: CircularProgressIndicator());
    //     },
    //   ),
    // );
  }
}
