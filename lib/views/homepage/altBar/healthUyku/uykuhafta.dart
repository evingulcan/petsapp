import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class UykuHafta extends StatefulWidget {
  @override
  _UykuHaftaState createState() => _UykuHaftaState();
}

class _UykuHaftaState extends State<UykuHafta> {

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
                        Text("8",style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("saat"),
                        ),
                        Text("36",style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
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
                        Text("8",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("saat"),
                        ),
                        Text("60",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("dakika"),
                        ),
                        SizedBox(width: 20,),
                        Text("4",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text("saat"),
                        ),
                        Text("45",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
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
                        Text("35",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
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
                            SalesData('Pzt',1),
                            SalesData('Sal', 2),
                            SalesData('Çar', 7),
                            SalesData('Per', 4),
                            SalesData('Cum', 5),
                            SalesData('Cmt', 6),
                            SalesData('Paz', 10)
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