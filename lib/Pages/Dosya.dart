import 'package:alpha/Pages/Thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:alpha/Components/Palette.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io'; 


class Dosyapage extends StatefulWidget {
  const Dosyapage({Key? key}) : super(key: key);

  @override
  State<Dosyapage> createState() => _DosyapageState();
}

class _DosyapageState extends State<Dosyapage> {
final formkey = GlobalKey<FormState>();
_DosyapageState(){
 selectedval = bash[1];
 }
 List<String> items = <String>[
  "جندی",
  "ملازم",
  "مەسول کەمپ",
   "مەسول تیم",

 ];
 String droupdownvalue ="";
  final bash =["جندی","ملازم","مەسول کەمپ","مەسول تیم"];
  String? selectedval ="";
      bool passToggle=true;
    bool obscureText=false;


 DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    var selectedOption;
    return Directionality(textDirection: TextDirection.rtl, child:
    Scaffold(
    appBar: AppBar(
        title: Center(
          child: Text("دروستکردنی دۆسییە",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
        backgroundColor: Palette.alphacolor,
        elevation: 0,
        // leading:  IconButton(
        //   onPressed: (){
        //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
        //   },
        //    icon: Icon(MdiIcons.accountPlusOutline)),
           actions: [
            IconButton(
          onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Thirdpage()));
          },
           icon: Icon(MdiIcons.arrowLeft)),
           ],
      ),
      body: ListView(
        children: [
           Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Form(
                 key: formkey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: 
                          Column(
                            children: [
                              TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  ناوی چواریت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "ناوی چواری بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.accountGroup,size: 20,),),
                    label: Text('ناوی چواری',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                           const SizedBox(height:8,),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  جۆری پێناست بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "جۆری پێناس بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.cardAccountDetails,size: 20,),),
                    label: Text('جۆری پێناس',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                           const SizedBox(height:8),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  ژمارەی پێناست بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "ژمارەی پێناس بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.shieldAccount,size: 20,),),
                    label: Text('ژمارەی پێناس',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                           const SizedBox(height:8,),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  ناونیشانت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: " ناونیشان بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.mapMarkerRadius,size: 20,),),
                    label: Text('ناونیشان',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                           const SizedBox(height:8,),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  ئاستی خوێندنت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "ئاستی خوێندن بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.school,size: 20,),),
                    label: Text('ئاستی خوێندن',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                            const SizedBox(height:8,),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  ژمارەی مۆبایلت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "ژمارەی مۆبایل بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.phone,size: 20,),),
                    label: Text('ژمارەی مۆبایل',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                           const SizedBox(height:8,),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  ژمارەی چەکت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "ژمارەی چەک بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.pistol,size: 20,),),
                    label: Text('ژمارەی چەک',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                          const SizedBox(height:8,),
                           TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  خولی بینراوت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "خولی بینراو بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.bookAccount,size: 20,),),
                    label: Text('خولی بینراو',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                            ],
                          ),
              
              ),
              const SizedBox(width:20,),
              Expanded(
                          child: 
                          Column(
                            children: [
                              const SizedBox(height:15,),
                             TextFormField(
                   validator: (value){
                    if(value!.trim().isEmpty){
                      return "  بەرواری بەسەرچوونت بیرچووە..!";
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.textColor1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
             ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Palette.activeColor),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
                    hintText: "بەرواری بەسەرچوون بنووسە",
                     hintStyle: TextStyle(
                  fontSize: 14,
                  color: Palette.textColor1,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                  ),
                    filled: true,
                    fillColor:Palette.backgroundColor,
                    prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.update,size: 20,),),
                    label: Text('بەرواری بەسەرچوون',
                    style: TextStyle(
                       fontSize: 16,
                  fontFamily: 'Rabar',
                  fontWeight: FontWeight.bold
                    ),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                  ),
              ),
                              const SizedBox(height:20,),
                              DropdownButtonFormField(
        items: bash.map((e) => DropdownMenuItem(
          child: Text(e),
          value: e,
        )).toList(),
        onChanged: (val) {
          setState(() {
        selectedval = val as String;
          });
        },
        value: selectedval,
        icon: Icon(
          Icons.arrow_drop_down_circle,
          color: Palette.facebookColor,
        ),
        dropdownColor: Palette.iconColor,
        decoration: InputDecoration(
          labelText: "دیاریکردنی پلە",
          labelStyle: TextStyle(
        fontSize: 15,
        color: Palette.textcolor3,
        fontFamily: 'Rabar',
        fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
                              const SizedBox(height:20,),
                            Dropdown1(),
                             const SizedBox(height:20,),
                             Dropdown(),
                             const SizedBox(height:20,),
                             BloodGroupDropdown(),
                              const SizedBox(height:10,),
                              // ImagePickerButton(),
                              const SizedBox(height:5,),
                              OutlinedButton(
                   onPressed: () async {
                  final DateTime? selected = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (selected != null) {
                    setState(() {
                      _selectedDate = selected;
                    });
                  }
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(20.0),
                          fixedSize: Size(600,45),
                          textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
                          primary:Palette.backgroundColor,
                        ),
                        child: Text(
                          'دیاریکردنی ڕۆژی لە دایکبوون :',
                          style: TextStyle(fontFamily: 'Rabar',color: Palette.textcolor3),),
              ),
                             const SizedBox(height:10,),
                           OutlinedButton(
                              onPressed: () async {
                             FilePickerResult? result = await FilePicker.platform.pickFiles();
                              if (result != null) {
                                String path = result.files.single.path!;
                                  print(path);
                                 }
                                },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                             
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(20.0),
                          fixedSize: Size(600,45),
                          textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
                          primary:Palette.backgroundColor,
                        ),
                        child: Text(
                          'ڕەسمێک هەڵبژێرە:',
                          style: TextStyle(fontFamily: 'Rabar',color: Palette.textcolor3),),
              ),
                           const SizedBox(height:10,),
              //               ElevatedButton(
              //           onPressed:(){
              //             if(formkey.currentState!.validate()){
              //               setState(() {
              //               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Thirdpage()));
              //               });
              //             }
              //           },
              //           style: ElevatedButton.styleFrom(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //             padding: EdgeInsets.all(20.0),
              //             fixedSize: Size(175,45),
              //             textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
              //             primary:Palette.alphacolor,
              //             onPrimary: Colors.white,
              //             elevation: 25,
              //             shadowColor: Colors.black,
              //           ),
              //           child: Text(
              //             'دروستکردنی دۆسییە',
              //             style: TextStyle(fontFamily: 'Rabar'),),
              // ),
                            ],
                          ),
              )
                      ],
                    ),
                    const SizedBox(height:15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           ElevatedButton(
                        onPressed:(){
                          if(formkey.currentState!.validate()){
                            setState(() {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Thirdpage()));
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(20.0),
                          fixedSize: Size(175,45),
                          textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
                          primary:Palette.alphacolor,
                          onPrimary: Colors.white,
                          elevation: 25,
                          shadowColor: Colors.black,
                        ),
                        child: Text(
                          'دروستکردنی دۆسییە',
                          style: TextStyle(fontFamily: 'Rabar'),),
              ),
                      ],
                    )
                  ],
                ),
              )
            ]
          )
        ),
        ]
      )
    ),
    );
  }
}




class BloodGroupDropdown extends StatefulWidget {
  @override
  _BloodGroupDropdownState createState() => _BloodGroupDropdownState();
}

class _BloodGroupDropdownState extends State<BloodGroupDropdown> {
  String? _selectedBloodGroup;
  List<String> _bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedBloodGroup,
      onChanged: (String? newValue) {
        setState(() {
          _selectedBloodGroup = newValue;
        });
      },
       icon: Icon(
          Icons.arrow_drop_down_circle,
          color: Palette.facebookColor,
        ),
      items: _bloodGroups.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      dropdownColor: Palette.iconColor,
     decoration: InputDecoration(
          labelText: "گرووپی خوێن",
          labelStyle: TextStyle(
        fontSize: 15,
        color: Palette.textcolor3,
        fontFamily: 'Rabar',
        fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
          ),
        ),
    );
  }
}




class Dropdown1 extends StatefulWidget {
  @override
  _Dropdown1State createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  String? _selectedDropdown;
  List<String> _dropdown = [
    'جندی',
    'مەسول کەمپ',
    'مەسول تیم',
    'مەسول وەجبە',
    'ملازم',
    'نەقیب',
    'فەرماندە',
    'رائید',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedDropdown,
      onChanged: (String? newValue) {
        setState(() {
          _selectedDropdown = newValue;
        });
      },
       icon: Icon(
          Icons.arrow_drop_down_circle,
          color: Palette.facebookColor,
        ),
      items: _dropdown.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      dropdownColor: Palette.iconColor,
       decoration: InputDecoration(
          labelText: "دیاریکردنی پایە",
          labelStyle: TextStyle(
        fontSize: 15,
        color: Palette.textcolor3,
        fontFamily: 'Rabar',
        fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
          ),
        ),
    );
  }
}




class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? _selectedDropdown;
  List<String> _dropdown = [
    'M4,Clock',
    'Clock',
    'M4',
    'None',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedDropdown,
      onChanged: (String? newValue) {
        setState(() {
          _selectedDropdown = newValue;
        });
      },
        icon: Icon(
          Icons.arrow_drop_down_circle,
          color: Palette.facebookColor,
        ),
      items: _dropdown.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
        dropdownColor: Palette.iconColor,
       decoration: InputDecoration(
          labelText: "دیاریکردنی چەک",
          labelStyle: TextStyle(
        fontSize: 15,
        color: Palette.textcolor3,
        fontFamily: 'Rabar',
        fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
          ),
        ),
    );
  }
}
