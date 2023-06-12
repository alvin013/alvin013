import 'package:alpha/Pages/Thirdpage.dart';
import 'package:alpha/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:alpha/Components/Palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:simple_animations/simple_animations.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
   final formkey = GlobalKey<FormState>();
    bool passToggle=true;
    bool obscureText=false;

  @override
  Widget build(BuildContext context) {
    return 
     Directionality(textDirection: TextDirection.rtl, child:
    Scaffold(
       appBar: AppBar(
        title: Center(
          child: Text("فۆڕمی چوونە ژوورەوە",style: TextStyle(
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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
          },
           icon: Icon(MdiIcons.accountPlusOutline)),
           ],
      ),
      body:
      Form(
        key: formkey,
        child: 
      Container(
        color:Colors.white,
        child: 
        Column(
          children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(("assets/images/ALP-1.png"),
              height: 300,width: 350,),
              ]
            ),
            Container(
              width: 300,
              height: 80,
              child: Column(
                children: [
                  TextFormField(
               validator: (value){
                if(value!.trim().isEmpty){
                  return "ژمارەی پێناست بیرچووە..!";
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
                hintText: "ژمارەی پێناس بنووسە...",
                 hintStyle: TextStyle(
              fontSize: 14,
              color: Palette.textColor1,
              fontFamily: 'Rabar',
              fontWeight: FontWeight.bold
              ),
                filled: true,
                fillColor:Palette.backgroundColor,
                prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.accountGroup,size: 20,),),
                label: Text('ژمارەی پێناس',
                style: TextStyle(
                   fontSize: 16,
              fontFamily: 'Rabar',
              fontWeight: FontWeight.bold
                ),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
          ),
                ]
              ),
            ),
       SizedBox(height: 10,),
          Container(
              width: 300,
              height: 80,
              child: Column(
                children: [
                  TextFormField(
               validator: (value){
                if(value!.trim().isEmpty){
                  return "ژمارەی نهێنیت بیرچووە..!";
                }
              },
              keyboardType: TextInputType.number,
            obscureText: passToggle,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Palette.textColor1),
          borderRadius: BorderRadius.all(Radius.circular(15)),
         ),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Palette.activeColor),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
                hintText: "ژمارەی نهێنی بنووسە...",
                 hintStyle: TextStyle(
              fontSize: 14,
              color: Palette.textColor1,
              fontFamily: 'Rabar',
              fontWeight: FontWeight.bold
              ),
                filled: true,
                fillColor:Palette.backgroundColor,
                prefixIcon: Padding(padding: EdgeInsets.only(right: 15),child: Icon(MdiIcons.accountGroup,size: 20,),),
              
               suffixIcon: InkWell(
                  onTap: (){
                    setState(() {
                    passToggle = !passToggle;
                  });
                  },
                  child: Icon(passToggle? Icons.visibility : Icons.visibility_off,size: 20),
                ),

                label: Text('ژمارەی نهێنی',
                style: TextStyle(
                   fontSize: 16,
              fontFamily: 'Rabar',
              fontWeight: FontWeight.bold
                ),),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
              ),
          ),
                ]
              ),
            ),
          SizedBox(height: 10,),
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
                      'دروستکردنی بەکارهێنەر',
                      style: TextStyle(fontFamily: 'Rabar'),),
          ),
          ],
         )
          ],
        ),
      )
     ),
    ),
     );
  }
}