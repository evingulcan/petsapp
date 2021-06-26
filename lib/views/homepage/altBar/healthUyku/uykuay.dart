import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class UykuAy extends StatefulWidget {
  @override
  _UykuAyState createState() => _UykuAyState();
}

class _UykuAyState extends State<UykuAy> {
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
                Text("Toplam uyku süresi"),
                SizedBox(width: 90,),
                Text("10",style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("saat"),
                ),
                Text("55",style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("dakika"),
                ),
              ],
            ),
            SizedBox(width: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("5",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("saat"),
                ),
                Text("27",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("dakika"),
                ),
                SizedBox(width: 20,),
                Text("3",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("saat"),
                ),
                Text("15",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("dakika"),
                ),
                SizedBox(width: 20,),
                Text("6",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("saat"),
                ),
                Text("05",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("dakika"),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("derin uyku süresi"),
                SizedBox(width: 20,),
                Text("sığ uyku süresi",),
                SizedBox(width: 20,),
                Text("ortalama süre",),
              ],
            ),

            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 450,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                          dataSource: <SalesData>[
                            SalesData('1',1),
                            SalesData('2', 2),
                            SalesData('3', 3),
                            SalesData('4', 4),
                            SalesData('5', 5),
                            SalesData('6', 6),
                            SalesData('7', 7),
                            SalesData('8', 4),
                            SalesData('9', 3),
                            SalesData('10', 6),
                            SalesData('11', 8),
                            SalesData('12', 13)
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
                    padding: const EdgeInsets.only(right:320 ,top: 8),
                    child: Text("uyku kaydı",style: TextStyle(fontWeight: FontWeight.bold),),
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
