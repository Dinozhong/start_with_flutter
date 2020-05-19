import 'package:flutter/material.dart';

class GameDetailPage extends StatefulWidget {
  GameDetailPage({Key key}) : super(key: key);

  @override
  _GameDetailPageState createState() => _GameDetailPageState();
}

class _GameDetailPageState extends State<GameDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.redAccent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              riskPage()
            ],
          ),
        ));
  }

  Widget riskPage() {
    final rowWidth = (MediaQuery.of(context).size.width-20-70)/2;
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Table(
              columnWidths: {
                0: FixedColumnWidth(70),
                1: FixedColumnWidth(rowWidth),
                2: FixedColumnWidth(rowWidth)
              },
              border: TableBorder.all(width: 1.0, color: Colors.grey[100]),
              children: _buildTableRow()
            ),
          ),
        ],
      ),
    );
  }

  _buildTableRow() {
    List testData = [
      {
        "companyName": "韦德",
        "risk": [
          {"duration": 0, "cap": "球半", "avLevel": 0, "avLevel2": 0},
          {"duration": 2916420, "cap": "一球", "avLevel": 105, "avLevel2": 78},
          {"duration": 383100, "cap": "半球/一球", "avLevel": 79, "avLevel2": 104},
          {"duration": 19080, "cap": "半球", "avLevel": 90, "avLevel2": 95}
        ]
      },
      {
        "companyName": "CROWN",
        "risk": [
          {"duration": 1, "cap": "球半", "avLevel": 21, "avLevel2": 22},
          {"duration": 3916420, "cap": "一球", "avLevel": 100, "avLevel2": 789},
          {"duration": 483100, "cap": "半球/一球", "avLevel": 792, "avLevel2": 4},
          {"duration": 59080, "cap": "半球", "avLevel": 920, "avLevel2": 915}
        ]
      },
      // {
      //   "companyName": "BET365",
      //   "risk": [
      //     {"duration": 0, "cap": "球半", "avLevel": 0, "avLevel2": 0},
      //     {"duration": 2916420, "cap": "一球", "avLevel": 105, "avLevel2": 78},
      //     {"duration": 383100, "cap": "半球/一球", "avLevel": 79, "avLevel2": 104},
      //     {"duration": 19080, "cap": "半球", "avLevel": 90, "avLevel2": 95}
      //   ]
      // }
    ];
    List<TableRow> rowList = <TableRow>[];
    Map lastMap = {};
if (testData.length % 2 != 0) {
  lastMap = testData.last;
  testData.removeLast();
}
if (testData.length > 1) {
      for (var i = 0; i < testData.length/2; i++) {
      print(testData[i+i]['companyName']);
      print(testData[i+i+1]['companyName']);
      TableRow company =  TableRow(children: [
                  Container(
                    height: 40,
                    color: Colors.redAccent,
                    child: Center(
                        child: Text(
                          '公司',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                 Container(
                   height: 40,
                   child: Center(
                      child: Text(
                        testData[i+i]['companyName'],
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                 ),
                 Container(
                   height: 40,
                  child: Center(
                      child: Text(
                        testData[i+i+1]['companyName'],
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                 ) 
                ]);
          rowList.add(company);
          int leftLength = testData[i+i]['risk'].length;
          int rightLength = testData[i+i+1]['risk'].length;
          int count = leftLength > rightLength ? leftLength : rightLength;
      for (var j = 0; j < count; j++) {
        Map leftMap = {};
        Map rightMap = {}; 
        if (testData[i+i]['risk'].length - 1 >= j) {
          print(testData[i+i]['risk'][j]);
        }else {
          testData[i+i+1]['risk'].add({"":""});
        }
        leftMap = testData[i+i]['risk'][j];

        if (testData[i+i+1]['risk'].length - 1 >= j) {
          print(testData[i+i+1]['risk'][j]);
        }else {
          testData[i+i+1]['risk'].add({"":""});
        }
        rightMap = testData[i+i+1]['risk'][j];
        print('+++++');
        print(rightMap.isEmpty);
        print(rightMap.length);
        TableRow risks =  TableRow(children: [
                  SizedBox(
                    height: 40,
                    child: Center(
                        child: Text(
                          j == 0 ? '初盘' : '风险$j',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                 Container(
                   height: 40,
                   child: Center(
                      child: Text(
                        leftMap.length == 1 ?
                        '' : '【${leftMap['duration']}分钟】\n${leftMap['avLevel']}${leftMap['cap']}${leftMap['avLevel2']}',
                        style: TextStyle(fontSize: 10.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                 ),
                 Container(
                   height: 40,
                  child: Center(
                      child: Text(
                        rightMap.length == 1 ?
                        '' : '【${rightMap['duration']}分钟】\n${rightMap['avLevel']}${rightMap['cap']}${rightMap['avLevel2']}',
                        style: TextStyle(fontSize: 10.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                 ) 
                ]);
          rowList.add(risks);
      }
    }
}

    print(lastMap.isEmpty);
    print(lastMap['risk']);
    if (lastMap.isNotEmpty) {
      TableRow lastCompany =  TableRow(children: [
                  SizedBox(
                    height: 40,
                    child: Center(
                        child: Text(
                          '公司',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                 Container(
                   height: 40,
                   child: Center(
                      child: Text(
                        lastMap['companyName'],
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                 ),
                 Container(
                   height: 40,
                  child: Center(
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                 ) 
                ]);
          rowList.add(lastCompany);
    for (var k = 0; k < lastMap['risk'].length; k++) {
      Map data = lastMap['risk'][k];
      TableRow risks =  TableRow(children: [
                  SizedBox(
                    height: 40,
                    child: Center(
                        child: Text(
                          k == 0 ? '初盘' : '风险$k',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                    ),
                 Container(
                   height: 40,
                   child: Center(
                      child: Text(
                        lastMap.length == 1 ?
                        '' : '【${data['duration']}分钟】\n${data['avLevel']}${data['cap']}${data['avLevel2']}',
                        style: TextStyle(fontSize: 10.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                 ),
                 Container(
                   height: 40,
                  child: Center(
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 10.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                 ) 
                ]);
          rowList.add(risks);
    }
    
    }
    
    return rowList;
  }
}
