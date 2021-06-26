import 'package:flutter/material.dart';


class KalpHafta extends StatefulWidget {
  @override
  _KalpHaftaState createState() => _KalpHaftaState();
}

class _KalpHaftaState extends State<KalpHafta> {
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
                Text("50-100",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
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
                        Text("65.0",style: TextStyle(color: Colors.red,fontSize: 25,),),
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
                        Text("55.0",style: TextStyle(color: Colors.red,fontSize: 25,),),
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

            Spacer(),
            Container(
              height: 400,
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
