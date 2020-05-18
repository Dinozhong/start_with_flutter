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
          pageOne(),
          heliPanKou(),
          yuceGaiLv(),
          fenxiGuandian(),
          tuijianPage(),
          jibenMian()
        ],
      ),
      )
    );
  }

  Widget pageOne() {
    final cellWidth = (MediaQuery.of(context).size.width - 10) / 4;
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Text(
              '数据更新时间：2020-05-05',
              style: TextStyle(fontSize: 13.0),
            ),
          ),
          Container(
            child: Table(
              border: TableBorder.all(width: 1.0, color: Colors.grey),
              children: [
                TableRow(children: [
                  Center(
                    child: Text('公司'),
                  ),
                  Center(
                    child: Text('意图指数'),
                  ),
                  Center(
                    child: Text('自然指数'),
                  ),
                  Center(
                    child: Text('高峰期指数'),
                  ),
                ]),
                TableRow(children: [
                  TableCell(child: Center(child: Text('金宝博'),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  SizedBox(
                    height: 40, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.redAccent,
                          width: cellWidth,
                          height: 20,
                        ),
                        Text('60')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.orangeAccent,
                          width: cellWidth/2,
                          height: 20,
                        ),
                        Text('100')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.yellow,
                          width: cellWidth,
                          height: 20,
                        ),
                        Text('80')
                      ],
                    ),
                  ),
                ]),
                TableRow(children: [
                  TableCell(child: Center(child: Text('澳门'),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  SizedBox(
                    height: 40, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.redAccent,
                          width: cellWidth,
                          height: 20,
                        ),
                        Text('60')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.orangeAccent,
                          width: cellWidth/2,
                          height: 20,
                        ),
                        Text('100')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40, 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.yellow,
                          width: cellWidth,
                          height: 20,
                        ),
                        Text('80')
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Container(
            child: Text('温馨提示：以上指数是反映上盘的受注情况', style: TextStyle(fontSize: 12.0, color: Colors.redAccent),),
          )
        ],
      ),
    );
  }

  Widget heliPanKou() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(child: Text('评估合理盘口可参考的信息'),),
          Container(child: Text('主客队历史对战'),),
          Container(
            child: Table(
              border: TableBorder.all(width: 1.0, color: Colors.grey),
              children: [
                TableRow(children: [
                  Center(
                    child: Text('比赛日期和名称', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('初盘盘口和水位', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('风险盘口和水位', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('赛果', style: TextStyle(fontSize: 10.0),),
                  ),
                ]),
                TableRow(children: [
                  SizedBox(
                    height: 40, 
                    child: TableCell(child: Center(child: Text('[2020-09-01\n水晶宫-爱华顿]', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  ),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('0-0', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                ]),
                TableRow(children: [
                  SizedBox(
                    height: 40, 
                    child: TableCell(child: Center(child: Text('[2020-09-01\n水晶宫-爱华顿]', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  ),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('0-0', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                ]),
              ],
            ),
            ),
            Container(
              child: Text('主客队积分相当球队的历史比赛'),
            ),
            Container(
              child: Text('(主队实力相当球队和客队对战记录)'),
            ),
            Container(
            child: Table(
              border: TableBorder.all(width: 1.0, color: Colors.grey),
              children: [
                TableRow(children: [
                  Center(
                    child: Text('比赛日期和名称', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('初盘盘口和水位', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('风险盘口和水位', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('赛果', style: TextStyle(fontSize: 10.0),),
                  ),
                ]),
                TableRow(children: [
                  SizedBox(
                    height: 40, 
                    child: TableCell(child: Center(child: Text('[2020-09-01\n水晶宫-爱华顿]', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  ),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('0-0', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                ]),
                TableRow(children: [
                  SizedBox(
                    height: 40, 
                    child: TableCell(child: Center(child: Text('[2020-09-01\n水晶宫-爱华顿]', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  ),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('0-0', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                ]),
              ],
            ),
            ),
            Container(
              child: Text('(客队实力相当球队和主队对战记录)'),
            ),
            Container(
            child: Table(
              border: TableBorder.all(width: 1.0, color: Colors.grey),
              children: [
                TableRow(children: [
                  Center(
                    child: Text('比赛日期和名称', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('初盘盘口和水位', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('风险盘口和水位', style: TextStyle(fontSize: 10.0),),
                  ),
                  Center(
                    child: Text('赛果', style: TextStyle(fontSize: 10.0),),
                  ),
                ]),
                TableRow(children: [
                  SizedBox(
                    height: 40, 
                    child: TableCell(child: Center(child: Text('[2020-09-01\n水晶宫-爱华顿]', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  ),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('0-0', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                ]),
                TableRow(children: [
                  SizedBox(
                    height: 40, 
                    child: TableCell(child: Center(child: Text('[2020-09-01\n水晶宫-爱华顿]', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  ),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('1.06 平半 0.87', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                  TableCell(child: Center(child: Text('0-0', style: TextStyle(fontSize: 10.0),),), verticalAlignment: TableCellVerticalAlignment.middle,),
                ]),
              ],
            ),
            ),
            Container(
            child: Text('温馨提示：球队实力是不断变化的，合理盘口需要谨慎评估', style: TextStyle(fontSize: 12.0, color: Colors.redAccent),),
          )
        ],
      ),
    );
  }

  Widget yuceGaiLv() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(child: Text('亚盘预测概率'),),
          Container(child: Text('盘口：半一'),),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 15.0,
                    color: Colors.redAccent,
                    child: Text('56%', style: TextStyle(fontSize: 10.0, color: Colors.white),),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 15.0,
                    color: Colors.yellow,
                    child: Text('44%', style: TextStyle(fontSize: 10.0, color: Colors.white),),
                  )
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('慢切丝特称'),
                Text('西汉姆联')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget fenxiGuandian() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(child: Text('球天机指数分析观点(仅供参考)'),),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
            'sdkfh ajdhf 及时的回复就会及时的回复可视电话风景时刻记得反馈还是快点好时刻的回复时间的回复圣诞节发上岛咖啡和是绝代风华圣诞节发黑色的回复说的废话说的废话'
          ),)
        ],
      ),
    );
  }

  Widget tuijianPage() {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      width: width - 20,
      child: Column(
        children: [
          Container(child: Text('推荐'),),
          Container(child: Text('拉赫蒂受让半一', style: TextStyle(fontSize: 16.0, color: Colors.redAccent),),) 
        ],
      ),
    );
  }

  Widget jibenMian() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(child: Text('基本面数据分析'),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Container(child: Align(child: Text('主队：拉赫蒂', style: TextStyle(color: Colors.white),),),color: Colors.redAccent, height: 40,),flex: 2,),
              Expanded(child: Container(),flex: 1,),
              Expanded(child: Container(child: Align(child:Text('客队：洪卡', style: TextStyle(color: Colors.white),)),color: Colors.orangeAccent, height: 40,),flex: 2,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(child: Container(child: Text('1.98'), color: Colors.redAccent, width: 20,), height: 20,),flex: 1,),
              Expanded(child: Container(child: Text('名气排行'),),flex: 1,),
              Expanded(child: Container(child: Container(child: Text('1.98'),), height: 20,),flex: 2,),
            ],
          )
        ],
      ),
    );
  }
}
