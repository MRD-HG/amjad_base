import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';



class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'إحصائيات المداخيل',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 45,
                        color: Colors.green.shade700,
                        title: '45%',
                        radius: 80,
                      ),
                      PieChartSectionData(
                        value: 35,
                        color: const Color(0xFFD2B48C),
                        title: '35%',
                        radius: 80,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: const Color(0xFFE6D5AC),
                        title: '20%',
                        radius: 80,
                      ),
                    ],
                    centerSpaceRadius: 40,
                    sectionsSpace: 0,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'إحصائيات المصاريف',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 40,
                        color: Colors.green.shade700,
                        title: '40%',
                        radius: 80,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: const Color(0xFFD2B48C),
                        title: '20%',
                        radius: 80,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: const Color(0xFFE6D5AC),
                        title: '20%',
                        radius: 80,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.green.shade500,
                        title: '20%',
                        radius: 80,
                      ),
                    ],
                    centerSpaceRadius: 40,
                    sectionsSpace: 0,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 3),
                          const FlSpot(1, 1),
                          const FlSpot(2, 4),
                          const FlSpot(3, 2),
                          const FlSpot(4, 5),
                          const FlSpot(5, 1),
                        ],
                        isCurved: true,
                        color: Colors.green.shade700,
                        barWidth: 3,
                        dotData: FlDotData(show: false),
                      ),
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 2),
                          const FlSpot(1, 4),
                          const FlSpot(2, 1),
                          const FlSpot(3, 5),
                          const FlSpot(4, 2),
                          const FlSpot(5, 3),
                        ],
                        isCurved: true,
                        color: const Color(0xFFD2B48C),
                        barWidth: 3,
                        dotData: FlDotData(show: false),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



