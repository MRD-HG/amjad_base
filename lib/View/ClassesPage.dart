import 'package:amjad_base/Contoller/AppBar.dart';
import 'package:amjad_base/Screens/Home.dart';
import 'package:amjad_base/Screens/messagingTble.dart';
import 'package:amjad_base/View/stats.dart';
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
      appBar: CustomAppBar(leadingIcon: Icons.account_circle_outlined),

      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/zelij.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.white.withOpacity(0.94),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                    buttonClass("قسم المالي", Icons.assistant_direction, () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                    }, context),
                    buttonClass("قسم اللوجستيكي", Icons.assistant_direction, () {}, context),
                    buttonClass("قسم الإداري", Icons.assistant_direction, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MessagingTable()));
                    }, context),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

}
Widget buttonClass(String text, IconData icon, Function()?onTap, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2 ,
      decoration: BoxDecoration(
        color: const Color(0xFF7E082B),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD0B87A),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}




