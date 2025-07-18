import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Contoller/AppBar.dart';

class MessagingTable extends StatelessWidget {
  const MessagingTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:CustomAppBar(
        leadingIcon: Icons.arrow_back_outlined,
        onIconPressed: (){
          Navigator.pop(context);
        },
      ),
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'المراسلات الواردة',
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF7E082B),
                        ),
                      ),
                      const SizedBox(width: 30),
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
                            label: Text('موضوع', style: GoogleFonts.cairo()),
                          ),
                          DataColumn(
                            label: Text('تاريخ', style: GoogleFonts.cairo()),
                          ),
                          DataColumn(
                            label: Text('إلى', style: GoogleFonts.cairo()),
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
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit,
                                        color: Color(0xFF7E082B)),
                                    onPressed: () {},
                                  ),
                                ],
                              )),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}