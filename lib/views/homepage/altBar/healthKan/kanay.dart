import 'package:flutter/material.dart';

class KanAy extends StatefulWidget {
  @override
  _KanAyState createState() => _KanAyState();
}

class _KanAyState extends State<KanAy> {
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
                    Text("max diyastolik kan basıncı"),
                    Row(
                      children: [
                        Text("45",style: TextStyle(color: Colors.red,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("mmHg"),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("min sistolik kan basıncı"),
                    Row(
                      children: [
                        Text("20",style: TextStyle(color: Colors.red,fontSize: 25,),),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("mmHg"),
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