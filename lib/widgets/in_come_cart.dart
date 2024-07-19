import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class InComeChart extends StatefulWidget {
  const InComeChart({super.key});

  @override
  State<InComeChart> createState() => _InComeChartState();
}

class _InComeChartState extends State<InComeChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(pieData());
  }

  PieChartData pieData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            setState(() {
              currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
        ),
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: currentIndex == 0 ? 40 : 30,
            value: 40,
            color: const Color(
              0XFF208CC8,
            ),
          ),
          PieChartSectionData(
            radius: currentIndex == 1 ? 40 : 30,
            showTitle: false,
            value: 25,
            color: const Color(
              0XFF4EB7F2,
            ),
          ),
          PieChartSectionData(
            radius: currentIndex == 2 ? 40 : 30,
            showTitle: false,
            value: 20,
            color: const Color(
              0XFF064061,
            ),
          ),
          PieChartSectionData(
            radius: currentIndex == 3 ? 40 : 30,
            showTitle: false,
            value: 22,
            color: const Color(
              0XFFE2DECD,
            ),
          )
        ]);
  }
}
