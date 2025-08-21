// import 'package:flutter/material.dart';
//
// class ChartCard extends StatelessWidget {
//   final String title;
//   final Widget chart;
//   const ChartCard({super.key, required this.title, required this.chart});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       margin: const EdgeInsets.all(8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(title,
//                 style: Theme.of(context)
//                     .textTheme
//                     .titleMedium
//                     ?.copyWith(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 16),
//             SizedBox(height: 200, child: chart),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {
  final String title;
  final Widget chart;

  const ChartCard({super.key, required this.title, required this.chart});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Breakpoints (you can tune values)
        bool isMobile = constraints.maxWidth < 600;
        bool isTablet =
            constraints.maxWidth >= 600 && constraints.maxWidth < 1000;

        double chartHeight = isMobile
            ? 180
            : isTablet
            ? 220
            : 280;

        double titleFontSize = isMobile
            ? 14
            : isTablet
            ? 16
            : 18;

        return Card(
          elevation: 4,
          margin: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 12 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 16),
                Expanded(
                 child: chart,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
