import 'package:flutter/material.dart';
import 'package:petsapp/views/homepage/altBar/healthKan/thermometerwidget.dart';

class KanGun extends StatefulWidget {
  @override
  _KanGunState createState() => _KanGunState();
}

class _KanGunState extends State<KanGun> {
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

            SizedBox(width: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   SizedBox(
                    child: ThermometerWidget(
                      borderColor: Colors.red,
                      innerColor: Colors.green,
                      indicatorColor: Colors.red,
                    ),
                  ),

                SizedBox(width: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("sistolik kan basıncı"),
                        Row(
                          children: [
                            Text("28",style: TextStyle(color: Colors.red,fontSize: 25,),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("mmHg"),
                            ),
                          ],
                        ),

                      ],
                    ),
                  /*  Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),

                    Column(
                      children: [
                        Text("sistolik kan basıncı"),
                        Row(
                          children: [
                            Text("0",style: TextStyle(color: Colors.red,fontSize: 25,),),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("mmHg"),
                            ),
                          ],
                        ),
                      ],
                    ),

                   */



                  ],
                ),
    ]
    ),


            Spacer(),
            Container(
              height: 350,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(right:200 ,top: 8),
                    child: Text("kan basıncı ölçüm kaydı",style: TextStyle(fontWeight: FontWeight.bold),),
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
