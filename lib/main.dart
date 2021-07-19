import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SightStudy());

class SightStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sight study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetTest(
        title: 'Sight flutter study',
      ),
    );
  }
}

class WidgetTest extends StatefulWidget {
  WidgetTest({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _WidgetTestState createState() => _WidgetTestState();
}

class _WidgetTestState extends State<WidgetTest> {
  int num = 0;

  void _incrementCounter() {
    setState(() {
      num++;
    });
  }

  void _decrementCounter() {
    setState(() {
      num--;
    });
  }

  Icon starIcon = Icon(Icons.star);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: TabBarView(
              children: [
                // 카운터 코드
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '$num',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Padding(padding: EdgeInsets.only(top: 200)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: _incrementCounter,
                            tooltip: 'Increment',
                            child: Icon(Icons.add),
                          ),
                          FloatingActionButton(
                            onPressed: _decrementCounter,
                            tooltip: 'Decrement',
                            child: Icon(Icons.remove),
                          )
                        ]),
                  ],
                )),

                // timePicker 코드
                Container(
                    height: 100,
                    child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (DateTime newdate) {
                        print(newdate);
                      },
                      use24hFormat: true,
                      // minimumDate: DateTime.now(), // 주석을 지우면 현재시각 이전의 시각을 선택할 수 없게 할 수 있다.
                      maximumYear: 2022,
                      minuteInterval: 1,
                      mode: CupertinoDatePickerMode.time,
                    )),

                // 버튼들 코드
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("ElevatedButton"),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: starIcon,
                        label: Text("ElevatedButton.icon"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("TextButton"),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: starIcon,
                        label: Text("TextButton.icon"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("OutlinedButton"),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: starIcon,
                        label: Text("OutlinedButton.icon"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: starIcon,
                            iconSize: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: starIcon,
                            iconSize: 40,
                          ),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.lightBlue,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: starIcon,
                              iconSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "This is a Card widget to show how to use ButtonBar",
                                    ),
                                  ],
                                ),
                              ),
                              ButtonBar(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("TextButton"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("ElevatedButton"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomBar()));
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, //색상
      child: Container(
        height: 70,
        padding: EdgeInsets.only(bottom: 10, top: 5),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black38,
          labelStyle: TextStyle(fontSize: 17),
          tabs: [
            Tab(
              icon: Icon(
                Icons.add,
                size: 20,
              ),
              text: 'Counter',
            ),
            Tab(
              icon: Icon(
                Icons.timer,
                size: 20,
              ),
              text: 'Time Picker',
            ),
            Tab(
              icon: Icon(
                Icons.gamepad,
                size: 20,
              ),
              text: 'Buttons',
            )
          ],
        ),
      ),
    );
  }
}
