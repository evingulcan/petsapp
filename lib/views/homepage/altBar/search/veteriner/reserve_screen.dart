
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:petsapp/views/homepage/altBar/search/veteriner/veterinerler.dart';



class ReserveScreen extends StatefulWidget {
  @override
  _ReserveScreenState createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  final CalendarWeekController _controller = CalendarWeekController();

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.yellow,
          title: Text('Make An Appointement'),
        ),
        body: Column(children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 1)
            ]),
            child: CalendarWeek(
              controller: _controller,
              height: 100,
              showMonth: true,
              minDate: DateTime.now().add(
                Duration(days: -365),
              ),
              maxDate: DateTime.now().add(
                Duration(days: 365),
              ),
              onDatePressed: (DateTime datetime) {
                // Do something
                setState(() {});
              },
              onDateLongPressed: (DateTime datetime) {
                // Do something
              },
              onWeekChanged: () {
                // Do something
              },
            ),
          ),
          BookPage(),
        ]
        ),
      );
}


class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    //final screen_size_height = MediaQuery.of(context).size.height;
    //buttonTime
    Widget buttonTime(timeText, btnBg, timeBtnColor) {
      return Container(
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: FlatButton(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.grey,
                  width: 1,
                  style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            color: btnBg,
            onPressed: () {},
            child: Text(timeText,
                style: TextStyle(
                    color: timeBtnColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15))),
      );
    }

    return  Container(
      width: screen_size_width,
     // height: screen_size_height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Container(
                width: screen_size_width,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 18),
                      Text("Randevu Saatleri", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonTime("9:30 - 10:30 AM", Colors.white, Colors.black54),
                            buttonTime(
                                "10:30 - 11:45 AM", Colors.yellow, Colors.white),
                            buttonTime(
                                "12:00 - 1:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "2:00 - 4:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "5:30 - 6:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "6:30 - 7:30 PM", Colors.white, Colors.black54),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: MyColors.blue,
                  child: Text(
                    "Randevu Oluştur",
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReserveScreen(),
                      ),
                    );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }

}
