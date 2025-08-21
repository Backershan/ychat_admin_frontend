import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/presentation/dashboard/widgets/bar_chart_widget.dart';
import 'package:y_chat_admin/src/presentation/dashboard/widgets/chart_card.dart';
import 'package:y_chat_admin/src/presentation/dashboard/widgets/geographical_distribution.dart';
import 'package:y_chat_admin/src/presentation/dashboard/widgets/line_chart_widget.dart';
import 'package:y_chat_admin/src/presentation/dashboard/widgets/pie_chart_widget.dart';
import 'package:y_chat_admin/src/presentation/dashboard/widgets/user_metrics_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 👤 User Metrics Section
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: isMobile ? 2 : 4,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                childAspectRatio: 2.5,
                children: const [
                  UserMetricsCard(
                    title: "Total Users",
                    value: "12,340",
                    icon: Icons.people,
                    color: Colors.blue,
                  ),
                  UserMetricsCard(
                    title: "Archived Users",
                    value: "1,230",
                    icon: Icons.archive,
                    color: Colors.orange,
                  ),
                  UserMetricsCard(
                    title: "Daily Active",
                    value: "534",
                    icon: Icons.today,
                    color: Colors.green,
                  ),
                  UserMetricsCard(
                    title: "Monthly Active",
                    value: "8,432",
                    icon: Icons.calendar_today,
                    color: Colors.purple,
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              // 📊 Screen Share & Charts Section
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: isMobile ? 1 : 2,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                childAspectRatio: 1.2,
                children: [
                  ChartCard(
                    title: "Daily Screen Share",
                    chart: BarChartWidget(
                      values: [5, 7, 6, 8, 9, 4, 10],
                      labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
                    ),
                  ),
                  ChartCard(
                    title: "Monthly Screen Share",
                    chart: LineChartWidget(
                      values: [1, 2, 3, 4, 5, 6, 7],
                      labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"],
                    ),
                  ),
                  ChartCard(
                    title: "Average Duration (Mins)",
                    chart: BarChartWidget(
                      values: [10, 15, 13, 20, 18, 25, 22],
                      labels: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
                    ),
                  ),
                  ChartCard(
                    title: "Geographical Distribution",
                    chart: PieChartWidget(
                      data: {
                        "India": 40,
                        "USA": 25,
                        "UK": 15,
                        "Canada": 10,
                        "Others": 10,
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}