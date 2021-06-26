import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class VucudGun extends StatefulWidget {
  @override
  _VucudGunState createState() => _VucudGunState();
}

class _VucudGunState extends State<VucudGun> {
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

            Column(
                children:[
                  Text("en son vücud sıcaklığı"),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("32.0",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("\u2103"),
                      ),
                    ],
                  ),
                ]
            ),
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: SfLinearGauge(
                    minorTicksPerInterval: 4,
                    useRangeColorForAxis: true,
                    animateAxis: true,
                    axisTrackStyle: LinearAxisTrackStyle(thickness: 1),
                    ranges:  <LinearGaugeRange>[
                      LinearGaugeRange(
                          startValue: 0,
                          endValue: 33,
                          position: LinearElementPosition.outside,
                          color: Color(0xffF45656)),
                      LinearGaugeRange(
                          startValue: 33,
                          endValue: 66,
                          position: LinearElementPosition.outside,

                          color: Color(0xffFFC93E)),
                      LinearGaugeRange(
                          startValue: 66,
                          endValue: 100,
                          position: LinearElementPosition.outside,
                          color: Color(0xff0DC9AB)),
                    ],
                  ),
                ),
              ],
            ),

            Spacer(),
            Container(
              height: 300,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(right: 200,top: 8),
                    child: Text("vücud sıcaklığı ölçüm kaydı",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 120,),
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
