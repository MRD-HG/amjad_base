import 'package:amjad_base/Contoller/AppBar.dart';
import 'package:amjad_base/View/stats.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home.dart';

class Monetizationtble extends StatelessWidget {
  const Monetizationtble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(leadingIcon: Icons.arrow_back_outlined,onIconPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()) );
      },),
      body: Stack(
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

             child: Padding(

              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'الخزينة',
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF7E082B),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.download,
                        color: Color(0xFFB8A36C),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'بحث',
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: GoogleFonts.cairo(color: Colors.grey),
                      suffixIcon: Icon(Icons.search, color: Color(0xFF7E082B)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        headingRowColor: MaterialStateProperty.all(
                          Color(0xFFB8A36C).withOpacity(0.3),
                        ),
                        columns: [
                          DataColumn(
                            label: Text('أدوات', style: GoogleFonts.cairo()),
                          ),
                          DataColumn(
                            label: Text('معلومات', style: GoogleFonts.cairo()),
                          ),

                          DataColumn(
                            label: Text('الإسم', style: GoogleFonts.cairo()),
                          ),
                        ],
                        rows: List.generate(
                          5,
                              (index) => DataRow(
                            cells: [
                              DataCell(Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.download,
                                        color: Color(0xFFB8A36C)),
                                    onPressed: () {

                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit,
                                        color: Color(0xFF7E082B)),
                                    onPressed: () {},
                                  ),
                                ]
                              )),


                              DataCell(Text('')),
                              DataCell(
                                  ElevatedButton(

                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF7E082B),
                                    ),
                                    onPressed: (){
                                        openDialog(context);
                                    },
                                   child: Text("إضغط",style: TextStyle(color: Colors.white),),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 270,)

                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );

  }
  Future openDialog( BuildContext context)=>showDialog(
    context: context,
    builder: (context)=> AlertDialog(
      title: Text('معلومات عامة'),
      content: Text("مداخيل شاملة"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("عودة"))
      ],
    ),
  );

}
