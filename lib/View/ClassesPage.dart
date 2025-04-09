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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined)),
      ),
      body: Container(



      ),

    );
  }
}
