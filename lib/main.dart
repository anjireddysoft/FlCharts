import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/dashboard.dart';

void main() {
  runApp(const MaterialApp(home: DashBoard()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: 300,
            child: BarChart(BarChartData(
                borderData: FlBorderData(show: false),
                gridData: FlGridData(show: false),
              //  backgroundColor: Colors.red,
                barTouchData:BarTouchData(touchTooltipData: BarTouchTooltipData(
                  getTooltipItem: (group, groupIndex, rod, rodIndex){
                    if (rod.toY != 0)
                      return createBarTooltip2(rodIndex, rod);
                  }
                )) ,
                titlesData: FlTitlesData(
                    show: true,
                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (double value, meta) {
                              String text = '';
                              switch (value.toInt()) {
                                case 1:
                                  text = 'Jan';
                                  break;
                                case 2:
                                  text = 'Feb';
                                  break;
                                case 3:
                                  text = 'March';
                                  break;
                              }
                              return Text(text,style: TextStyle(),);
                            }))),
                barGroups: [
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                      toY: 9,
                      width: 15,
                      color: Colors.red,
                    ),
                    BarChartRodData(
                      toY: 4,
                      width: 15,
                      color: Colors.blue,
                    ),
                    BarChartRodData(toY: 1, width: 15, color: Colors.green),
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(toY: 9, width: 15, color: Colors.red),
                    BarChartRodData(toY: 6, width: 15, color: Colors.blue),
                    BarChartRodData(toY: 4, width: 15, color: Colors.green),
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(toY: 9, width: 15, color: Colors.red),
                    BarChartRodData(toY: 5, width: 15, color: Colors.blue),
                    BarChartRodData(toY: 2, width: 15, color: Colors.green),
                  ]),
                ])),
          ),
        ),
      ),
    );
  }
  BarTooltipItem createBarTooltip2(int rodIndex, BarChartRodData rod) {
    String tooltipContent = "";
    switch (rodIndex) {
      case 0:
        tooltipContent = "Total number of celebrities - ";
        break;
      case 1:
        tooltipContent = "Total Requests Created - ";
        break;
      case 2:
        tooltipContent = "Total Requests Completed - ";
        break;

    }

    tooltipContent += "${rod.toY}";
    return BarTooltipItem(
      tooltipContent,
      TextStyle(color: Colors.black, fontSize: 12, fontFamily: "Nunito"),
      textAlign: TextAlign.start,
    );
  }
}
