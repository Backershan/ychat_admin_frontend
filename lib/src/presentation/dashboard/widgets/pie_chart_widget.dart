import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  final Map<String, double> data;

  const PieChartWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.blue, Colors.orange, Colors.green, Colors.purple, Colors.red];

    return PieChart(
      PieChartData(
        sections: data.entries.map((e) {
          final index = data.keys.toList().indexOf(e.key);
          return PieChartSectionData(
            value: e.value,
            title: "${e.value.toStringAsFixed(1)}%",
            color: colors[index % colors.length],
            radius: 60,
            titleStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          );
        }).toList(),
      ),
    );
  }
}
