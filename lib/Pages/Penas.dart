import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:alpha/Components/Palette.dart';


class Penaspage extends StatefulWidget {
  const Penaspage({super.key});

  @override
  State<Penaspage> createState() => _PenaspageState();
}

class _PenaspageState extends State<Penaspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(" درووستکردنی پێناس ",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
        backgroundColor: Palette.alphacolor,
        elevation: 0,
      ),
    );
  }
}