import 'package:flutter/material.dart';

/*import 'package:syncfusion_flutter_xlsio/xlsio.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:universal_html/html.dart' show AnchorElement;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';

 */

class YapilanAsilar extends StatefulWidget {
  @override
  _YapilanAsilarState createState() => _YapilanAsilarState();
}

class _YapilanAsilarState extends State<YapilanAsilar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Yapılan Aşılar"),
      ),
      body: Column(
        children: [
         /* Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("AŞI TÜRÜ".toUpperCase()),
              SizedBox(width: 70,),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 20.0,
              ),
              SizedBox(width: 70,),
              Text("TARİH".toUpperCase()),
            ],
          ),

          */
          SizedBox(height: 30,),
        Padding(
        padding: const EdgeInsets.all(8.0),
               child: Container(
            height: 500,
            width: 400,
                decoration: BoxDecoration(
              color: Colors.yellow,
                   ),
                  child: Padding(
                     padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
          Row(
            children: [
              Text("ZEROKRIM CH-İÇ PARAZİT"),
              Spacer(),
              Text("20.05.2018"),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),

          Row(
            children: [
              Text("NOBİVAC LEPTO&DHPPİ-KARMA AŞI"),
              Spacer(),
              Text("28.05.2018"),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
         Row(
            children: [
              Text("ZEROKRIM CH-İÇ PARAZİT"),
              Spacer(),
              Text("06.06.2018"),
            ],
          ),

          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Row(
            children: [
              Text("FİPROES-DIŞ PARAZİT"),
              Spacer(),
              Text("06.06.2018"),
            ],
          ),
                    Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Text("NOBİVAC LEPTO&DHPPİ-KARMA AŞI"),
                        Spacer(),
                        Text("16.06.2018"),
                      ],
                    ),
                 ]
               ),
        ),
        ),
        ),
      ]
      ),
    );
  }
}



/*class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        ElevatedButton(child: Text('Create Excel'), onPressed: createExcel),
      ),
    );
  }

  Future<void> createExcel() async {
    final Workbook workbook = Workbook();
    final Worksheet sheet = workbook.worksheets[0];
    sheet.getRangeByName('A1').setText('AŞI TÜRÜ');
    sheet.getRangeByName('A2').setText('ZEROKRIM CH-İÇ PARAZİT');
    sheet.getRangeByName('A3').setText('NOBİVAC LEPTO&DHPPİ-KARMA AŞI');
    sheet.getRangeByName('A4').setText('ZEROKRIM CH-DIŞ PARAZİT');
    sheet.getRangeByName('A5').setText('FİPROES-DIŞ PARAZİT');
    sheet.getRangeByName('A6').setText('NOBİVAC LEPTO&DHPPİ-KARMA AŞI');
    sheet.getRangeByName('A7').setText('NOBİVAC LEPTO&DHPPİ-KARMA AŞI');
    sheet.getRangeByName('A8').setText('ZEROKRIM CH-İÇ PARAZİT');
    sheet.getRangeByName('A9').setText('ZEROKRIM CH-DIŞ PARAZİT');
    sheet.getRangeByName('B1').setText('TARİH');
    sheet.getRangeByName('B2').setText('20.05.2018');
    sheet.getRangeByName('B3').setText('28.05.2018');
    sheet.getRangeByName('B4').setText('06.06.2018');
    sheet.getRangeByName('B5').setText('06.06.2018');
    sheet.getRangeByName('B6').setText('16.06.2018');
    sheet.getRangeByName('B7').setText('07.07.2018');
    sheet.getRangeByName('B8').setText('13.07.2018');
    sheet.getRangeByName('B9').setText('17.07.2018');

    final List<int> bytes = workbook.saveAsStream();
    workbook.dispose();

    if (kIsWeb) {
      AnchorElement(
          href:
          'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
        ..setAttribute('download', 'Output.xlsx')
        ..click();
    } else {
      final String path = (await getApplicationSupportDirectory()).path;
      final String fileName =
      Platform.isWindows ? '$path\\Output.xlsx' : '$path/Output.xlsx';
      final File file = File(fileName);
      await file.writeAsBytes(bytes, flush: true);
      OpenFile.open(fileName);
    }
  }


}

 */