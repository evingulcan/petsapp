import 'package:flutter/material.dart';

class VucudAy extends StatefulWidget {
  @override
  _VucudAyState createState() => _VucudAyState();
}

class _VucudAyState extends State<VucudAy> {
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
                Column(
                  children: [
                    Text("ateş"),
                    Row(
                      children: [
                        Text("30",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("kez"),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("maksimum vücud sıcaklığı"),
                    Row(
                      children: [
                        Text("38.0",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("\u2103"),
                        ),
                      ],
                    ),
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
                    padding: const EdgeInsets.only(right:200 ,top: 8),
                    child: Text("vücud sıcaklığı ölçüm kaydı",style: TextStyle(fontWeight: FontWeight.bold),),
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