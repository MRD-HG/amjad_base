import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Classespage extends StatefulWidget {
  const Classespage({super.key});

  @override
  State<Classespage> createState() => _ClassespageState();
}

class _ClassespageState extends State<Classespage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false, // Prevent resize on keyboard
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.account_circle_outlined,color:Color(0xFFD0B87A),size: 50,),
          ],
        ),
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        actions:[ Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset("assets/logo.jpeg", width: 120, height: 120),
        ),
    ],
        backgroundColor: Colors.white,
        elevation: 0.1,
        shadowColor: Colors.grey.withOpacity(0.5),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
      // Background image
      Positioned.fill(
      child: Image.asset(
        "assets/zelij.jpg",
        fit: BoxFit.cover,
      ),
    ),

    // Semi-transparent white overlay
    Positioned.fill(
    child: Container(
    color: Colors.white.withOpacity(0.94),
    ),
    ),
         
    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height *0.1,),
          buttonClass("قسم اللوجستيكي", Icons.assistant_direction as IconData, (){}, context)
        ],
      ),

    )
  ]
             
    )

    );
  }

}
Widget buttonClass(String text, IconData icon, Function()?onTap,BuildContext context){
  return  Ink(
    decoration: BoxDecoration(
        gradient:
        LinearGradient(colors: [Color(0xFF7E082B),Color(0xFFD0B87A)]),
        borderRadius: BorderRadius.circular(40)),
    child: Container(
      width: MediaQuery.sizeOf(context).width*0.5,
      height: MediaQuery.sizeOf(context).height *0.07,
      alignment: Alignment.center,

      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Icon(
              icon as IconData?,
              size: 30,
              color:  Color(0xFFD0B87A),),
          ),
          SizedBox(
            width: 40 ,
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.cairo(fontSize: 19,fontWeight:FontWeight.bold , color: Colors.white),
            
            ),
          ),
        ],
      ),
    ),
  );
}




