import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartBackground extends StatelessWidget {
  const LineChartBackground({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 15,
            spreadRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: LineChart(
        mainData(),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      lineTouchData: const LineTouchData(enabled: false),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1),
            FlSpot(2.6, 2),
            FlSpot(4.9, 2.5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 5),
          ],
          isCurved: true,
          color: color,
          barWidth: 2,
          isStrokeCapRound: false,
          dotData: const FlDotData(show: false),
          preventCurveOverShooting: true,
          belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  color,
                  color.withOpacity(0.6),
                  color.withOpacity(0.3),
                  color.withOpacity(0.0),
                ],
              )),
        ),
      ],
    );
  }
}
