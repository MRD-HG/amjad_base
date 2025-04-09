import 'package:amjad_base/View/ClassesPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent resize on keyboard
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset("assets/logo.jpeg", width: 120, height: 120),
        centerTitle: true,
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


          Column(

            children:[
              SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height *0.1,),

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'إسم المستخدم',
                      style: GoogleFonts.cairo(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height *0.08),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'كلمة السر',
                      style: GoogleFonts.cairo(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height *0.18),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Classespage()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient:
                           LinearGradient(colors: [Color(0xFF7E082B),Color(0xFFD0B87A)]),
                          borderRadius: BorderRadius.circular(40)),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.5,
                        height: MediaQuery.sizeOf(context).height *0.06,
                        alignment: Alignment.center,

                        child:  Text(
                          'دخول',
                          style: GoogleFonts.cairo(fontSize: 18,fontWeight:FontWeight.bold , color: Colors.white),

                        ),
                      ),
                    ),
                  ),
                  
                ],

              ),

            ),
            ]
          ),
        ],
      ),
    );
  }
}
