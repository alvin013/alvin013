import 'package:alpha/Pages/Loginform.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:alpha/Components/Palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  _HomepageState() {
    selectedval = bash[1];
  }

  List<String> items = <String>[
    "HR",
    "Acoondent",
    "Invied",
  ];
  final formkey = GlobalKey<FormState>();
  String droupdownvalue = "";
  final bash = ["HR", "Accountant", "Indive"];
  String? selectedval = "";
  bool passToggle = true;
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "زیادکردنی بەکارهێنەر",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                // color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Palette.alphacolor,
          elevation: 0,
        ),
        body: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                // color:Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 80,
                      child: Column(children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "ناوی چواریت بیرچووە..!";
                            }
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.activeColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              hintText: "ناوی چواری بنووسە...",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                  fontFamily: 'Rabar',
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Palette.backgroundColor,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  MdiIcons.accountGroup,
                                  size: 20,
                                ),
                              ),
                              label: Text(
                                'ناوی چواری',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Rabar',
                                    fontWeight: FontWeight.bold),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: Column(children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "ژمارەی پێناست بیرچووە..!";
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.activeColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              hintText: "ژمارەی پێناس بنووسە...",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                  fontFamily: 'Rabar',
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Palette.backgroundColor,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  MdiIcons.accountGroup,
                                  size: 20,
                                ),
                              ),
                              label: Text(
                                'ژمارەی پێناس',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Rabar',
                                    fontWeight: FontWeight.bold),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: Column(children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "ژمارەی نهێنیت بیرچووە..!";
                            }
                          },
                          keyboardType: TextInputType.number,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.activeColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              hintText: "ژمارەی نهێنی بنووسە...",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                  fontFamily: 'Rabar',
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Palette.backgroundColor,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  MdiIcons.accountGroup,
                                  size: 20,
                                ),
                              ),
                              label: Text(
                                'ژمارەی نهێنی',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Rabar',
                                    fontWeight: FontWeight.bold),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: Column(children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "دڵنیابوونەوە لە ژمارەی نهێنیت بیرچووە..!";
                            }
                          },
                          keyboardType: TextInputType.number,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.activeColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              hintText:
                                  "دڵنیابوونەوە لە ژمارەی نهێنی بنووسە...",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Palette.textColor1,
                                  fontFamily: 'Rabar',
                                  fontWeight: FontWeight.bold),
                              filled: true,
                              fillColor: Palette.backgroundColor,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  MdiIcons.accountGroup,
                                  size: 20,
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(
                                    passToggle
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 20),
                              ),
                              label: Text(
                                'دڵنیابوونەوە لە ژمارەی نهێنی',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Rabar',
                                    fontWeight: FontWeight.bold),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: Column(children: [
                        Dropdown1(),
                      ]),
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      child: Column(children: [
                        Dropdown(),
                      ]),
                    ),
                    // SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              setState(() {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginForm()));
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(20.0),
                            fixedSize: Size(175, 45),
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            primary: Palette.alphacolor,
                            onPrimary: Colors.white,
                            elevation: 25,
                            shadowColor: Colors.black,
                          ),
                          child: Text(
                            'دروستکردنی بەکارهێنەر',
                            style: TextStyle(fontFamily: 'Rabar'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? _selectedDropdown;
  List<String> _dropdown = [
    'HR',
    'Accountet',
    'Indive',
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
        labelText: "دیاریکردنی بەش",
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
  const Dropdown1({super.key});

  @override
  State<Dropdown1> createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  String? _selectedDropdown;
  List<String> _dropdown = [
    'Read',
    'ReadWrite',
    'Full Controll',
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
        labelText: "ڕێگەپێدان",
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

//   TextFormField(
//       textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Rabar',fontWeight: FontWeight.bold,fontSize: 15),
//       keyboardType: TextInputType.emailAddress,
//       controller: emailController,
//       decoration: InputDecoration(
//       enabledBorder: OutlineInputBorder(
//   borderSide: BorderSide(color: Colors.amber),
//   borderRadius: BorderRadius.all(Radius.circular(25.0)),
//  ),
//   focusedBorder: OutlineInputBorder(
//   borderSide: BorderSide(color: Colors.amber),
//   borderRadius: BorderRadius.all(Radius.circular(25.0)),
//   ),
//   label: Text('ئیمێڵ'),
//   hintText: 'ئیمێڵەکەت بنوسە',
//   hintStyle: TextStyle(
//     fontSize: 14,
//     color: Colors.amber,
//     fontFamily: 'Rabar',
//     fontWeight: FontWeight.bold
//     ),
//         prefixIcon: Icon(Icons.email)
//       ),
//       validator: (value){
//         if(value!.isEmpty){
//           return "تکایە ئیمەیڵەکەت بنوسە";
//         }
//         bool emailValid = RegExp(
//           r"^[a-zA-Z0-9-.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//           .hasMatch(value);
//           if(!emailValid){
//             return "ئیمەیڵەکەت تەواو نییە";
//           }
//       },
//     ),
