import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class KalpGun extends StatefulWidget {
  @override
  _KalpGunState createState() => _KalpGunState();
}

class _KalpGunState extends State<KalpGun> {
  DateTime pickedDate;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 140,),
              child: ListTile(
                title: Text("<      ${pickedDate.year}-${pickedDate.month}-${pickedDate.day}      >"),
                onTap: _pickDate,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ortalama nabız"),
                SizedBox(width: 100,),
                Text("70-100",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Text("kez / dakika"),
                ),
              ],
            ),
            SizedBox(width: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text("75.0",style: TextStyle(color: Colors.red,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("bpm"),
                        ),
                      ],
                    ),
                    Text("maksimum kalp atış hızı"),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("55.5",style: TextStyle(color: Colors.red,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("bpm"),
                        ),
                      ],
                    ),
                    Text("minimum nabız"),
                  ],
                ),

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 500,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                          dataSource: <SalesData>[
                            SalesData('00:00', 0.2),
                            SalesData('05:00', 0.4),
                            SalesData('10:00', 0.8),
                            SalesData('15:00', 1.2),
                            SalesData('20:00', 1.0),
                            SalesData('23:00', 0.8)
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales,
                        ),
                      ]),
                )
              ],
            ),


            Spacer(),
            Container(
              height: 240,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(right:250 ,top: 8),
                    child: Text("kalp atış hızı kaydı",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 80,),
                  Text("Geçici olarak veri yok",style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),
            ),

          ]
      ),
    );
  }
  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
      initialDate: pickedDate,
    );
    if(date != null)
      setState(() {
        pickedDate = date;
      });
  }
}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
