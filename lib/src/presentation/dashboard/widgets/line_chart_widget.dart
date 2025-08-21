import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<double> values;
  final List<String> labels;
  final Color color;

  const LineChartWidget({
    super.key,
    required this.values,
    required this.labels,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value.toInt() < labels.length) {
                  return Text(labels[value.toInt()], style: const TextStyle(fontSize: 10));
                }
                return const SizedBox();
              },
            ),
          ),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: values.asMap().entries.map((e) => FlSpot(e.key.toDouble(), e.value)).toList(),
            isCurved: true,
            color: color,
            barWidth: 3,
            belowBarData: BarAreaData(show: true, color: color.withOpacity(0.2)),
            dotData: FlDotData(show: true),
          )
        ],
      ),
    );
  }
}
