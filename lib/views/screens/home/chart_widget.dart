import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

double _min = 2.0;
double _max = 1000.0;
SfRangeValues _values = SfRangeValues(400.5, 800.5);

// List<Data> chartData = <Data>[
//   for (int i = 0; i <= 500; i++)
//     for (int j = 0; j <= 2 * (500 - i) - 1; j++)
//       Data(x: i.toDouble(), y: j.toDouble()),
//   Data(x: 300.0, y: 30.4),
//   Data(x: 400.0, y: 20.8),
//   Data(x: 500.0, y: 100.6),
//   Data(x: 600.0, y: 200.3),
//   Data(x: 700.0, y: 20.5),
//   Data(x: 800.0, y: 20.9),
//   Data(x: 900.0, y: 30.8),
//   Data(x: 100.0, y: 30.7),
// ];
class ChartData {
  final double x;
  final double y;

  ChartData({required this.x, required this.y});
}
// class Data {
//   Data({required this.x, required this.y});
//   final double x;
//   final double y;
// }

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(x: 20.0, y: 32),
      ChartData(x: 30.0, y: 40),
      ChartData(x: 40.0, y: 34),
      ChartData(x: 50.0, y: 52),
      ChartData(x: 60.0, y: 42),
      ChartData(x: 70.0, y: 38),
      ChartData(x: 80.0, y: 41),
    ];
    return SfRangeSelector(
      min: _min,
      max: _max,
      interval: 1,
      showDividers: false,

      showLabels: false,
      showTicks: false,
      // numberFormat: NumberFormat("\$"),
      initialValues: _values,
      child: SizedBox(
        height: 130,
        // color: Colors.red,
        child: SfCartesianChart(
            borderWidth: 0.5,
            // primaryXAxis: CategoryAxis(),
            // primaryYAxis: NumericAxis(),
            plotAreaBackgroundColor: ThemeColors.themeColor,
            enableAxisAnimation: false,
            margin: EdgeInsets.zero,
            series: <ChartSeries>[
              // Renders step line chart
              StepLineSeries<ChartData, double>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ]),

        // SfCartesianChart(
        //   primaryXAxis: NumericAxis(
        //     minimum: _min,
        //     maximum: _max,
        //     isVisible: false,
        //   ),
        //   primaryYAxis: NumericAxis(isVisible: false),
        //   plotAreaBorderWidth: 0,
        //   series: <ColumnSeries<Data, double>>[
        //     ColumnSeries<Data, double>(
        //         color: ThemeColors.themeColor,
        //         dataSource: chartData,
        //         xValueMapper: (Data sales, int index) => sales.x,
        //         yValueMapper: (Data sales, int index) => sales.y)
        //   ],
        // ),
      ),
    );

    // Scaffold(
    //   body: Center(
    //     child: Container(
    //       child:
    //       SfCartesianChart(
    //           primaryXAxis: DateTimeAxis(),
    //           series: <ChartSeries>[
    //             // Renders step line chart
    //             StepLineSeries<ChartData, DateTime>(
    //                 dataSource: chartData,
    //                 xValueMapper: (ChartData data, _) => data.x,
    //                 yValueMapper: (ChartData data, _) => data.y)
    //           ]),
    //     ),
    //   ),
    // );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return
  // SfRangeSelector(
  //   min: _min,
  //   max: _max,
  //   interval: 1,
  //   showDividers: false,

  //   showLabels: false,
  //   showTicks: false,
  //   // numberFormat: NumberFormat("\$"),
  //   initialValues: _values,
  //   child: SizedBox(
  //     height: 130,
  //     // color: Colors.red,
  //     child: SfCartesianChart(
  //       primaryXAxis: NumericAxis(
  //         minimum: _min,
  //         maximum: _max,
  //         isVisible: false,
  //       ),
  //       primaryYAxis: NumericAxis(isVisible: false),
  //       plotAreaBorderWidth: 0,
  //       series: <ColumnSeries<Data, double>>[
  //         ColumnSeries<Data, double>(
  //             color: ThemeColors.themeColor,
  //             dataSource: chartData,
  //             xValueMapper: (Data sales, int index) => sales.x,
  //             yValueMapper: (Data sales, int index) => sales.y)
  //       ],
  //     ),
  //   ),
  // );
}
