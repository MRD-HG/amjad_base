import 'package:amjad_base/Contoller/AppBar.dart';
import 'package:amjad_base/Screens/messagingTble.dart';
import 'package:amjad_base/View/stats.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Contoller/CustomButton.dart';
import 'monetizationTble.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    double? width = MediaQuery.sizeOf(context).width;
    double? height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(leadingIcon: Icons.menu, onIconPressed: (){

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

                     SizedBox(height: height *0.07),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        _buildStatCard('المساهمات', ' درهم 15,500', 'عرض التفاصيل'),
                        _buildStatCard('عدد المنخرطين', '15', 'عرض التفاصيل'),
                        _buildStatCard('المصاريف', 'درهم 25,500', 'عرض التفاصيل'),
                        _buildStatCard('المداخيل', 'درهم 15,500', 'عرض التفاصيل'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'إحصائيات',
                            style: GoogleFonts.cairo(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF7E082B),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 200,
                            child: PieChart(
                              PieChartData(
                                sections: [
                                  PieChartSectionData(
                                    color: const Color(0xFF7E082B),
                                    value: 60,
                                    title: "60%",
                                    titleStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,


                                    ),

                                  ),
                                  PieChartSectionData(
                                    color: const Color(0xFFB8A36C),
                                    value: 40,
                                    title: "40%",
                                    titleStyle: TextStyle(
                                      color: Colors.white,

                                    ),


                                  ),
                                ],
                                centerSpaceRadius: 60,
                                sectionsSpace: 0,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'عرض التفاصيل',
                              style: GoogleFonts.cairo(
                                color: const Color(0xFF7E082B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'تقارير',
                      icon: Icons.attachment,
                      onPressed: () {
                        Navigator.push(  // Changed from pushReplacement to push
                            context,
                            MaterialPageRoute(builder: (context) => StatisticsPage())
                        );
                      },
                    ),
                    SizedBox(height: height*0.02),
                    CustomButton(
                      text: 'الخزينة',
                      icon: Icons.monetization_on,
                      onPressed: () {
                        Navigator.push(  // Changed from pushReplacement to push
                            context,
                            MaterialPageRoute(builder: (context) => Monetizationtble())
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDDC482).withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.cairo(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: GoogleFonts.cairo(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_left)),
              Container(
                padding: EdgeInsets.only(
                  bottom: 5, // Space between underline and text
                ),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ))
                ),
                child: Text(
                  subtitle,
                  style: GoogleFonts.cairo(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}