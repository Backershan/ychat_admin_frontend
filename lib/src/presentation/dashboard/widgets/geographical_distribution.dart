import 'package:flutter/material.dart';

import 'chart_card.dart';

class GeographicalDistribution  extends StatelessWidget {
  final Widget mapWidget;

  const GeographicalDistribution ({super.key, required this.mapWidget});

  @override
  Widget build(BuildContext context) {
    return ChartCard(
      title: "Geographical Distribution",
      chart: mapWidget,
    );
  }
}