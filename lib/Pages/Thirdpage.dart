import 'package:alpha/Pages/Dosya.dart';
import 'package:alpha/Pages/Penas.dart';
import 'package:alpha/Pages/Report.dart';
import 'package:alpha/Pages/Tomar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:alpha/Components/Palette.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:
    Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("فۆڕمی داشبۆرد ",style: TextStyle(
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
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ));
          },
           icon: Icon(MdiIcons.menu)),
           ],
      ),
    body:
    DashboardScreen(),
    ),
    );
  }
}



class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCard(
                  Icon(MdiIcons.accountEdit, size: 48,color: Palette.alphacolor,),
                  'دۆسییە',
                  'دروستکردنی دۆسییە',
                  () {
                   setState(() {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dosyapage()));
                   });
                  },
                ),
                _buildCard(
                  Icon(MdiIcons.accountGroup, size: 48,color: Palette.alphacolor,),
                  'تۆمار',
                  ' تۆماری ئامادەبوون',
                  () {
                    setState(() {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Tomarpage()));
                   });
                  },
                ),
              ],
            ),
          ),
         SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCard(
                  Icon(MdiIcons.cardAccountDetails, size: 48,color: Palette.alphacolor,),
                  'پێناس',
                  'دروستکردنی پێناس',
                  () {
                    setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Penaspage()));
                   });
                  },
                ),
                _buildCard(
                  Icon(MdiIcons.notebookMultiple, size: 48,color: Palette.alphacolor,),
                  'ڕاپۆرت',
                  'پێشاندانی ڕاپۆرت',
                  () {
                    setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Reportpage()));
                   });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Icon icon, String title, String subtitle, Function onPressed) {
    return InkWell(
      onTap: onPressed as void Function()?,
      child: Card(
        elevation: 6.0,
        shadowColor: Palette.alphacolor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(height: 8.0),
              Text(
                title,
                style: TextStyle(
                  color: Palette.alphacolor,
                     fontSize: 20,
                fontFamily: 'Rabar',
                fontWeight: FontWeight.bold
                  ),
              ),
              SizedBox(height: 8.0),
              Text(
                subtitle,
                style: TextStyle(
                     fontSize: 14,
                fontFamily: 'Rabar',
                  ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}