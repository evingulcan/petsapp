import 'package:flutter/material.dart';

class AdimHafta extends StatefulWidget {
  @override
  _AdimHaftaState createState() => _AdimHaftaState();
}

class _AdimHaftaState extends State<AdimHafta> {
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
                Text("bu haftanın adımları"),
                SizedBox(width: 100,),
                Text("2000",style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("adım"),
                ),
              ],
            ),
            SizedBox(width: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("1200",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                    Text("hedef sayısı"),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("70,00",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                    Text("kcal",),
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("6,00",style: TextStyle(color: Colors.deepPurple,fontSize: 25,),),
                    Text("km",),
                  ],
                ),

              ],
            ),

            Container(
              height: 200,
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children:[
                  SizedBox(height: 80,),
                  Text("No chart data available.",style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              ),
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
                    child: Text("adım ayrıntıları",style: TextStyle(fontWeight: FontWeight.bold),),
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

