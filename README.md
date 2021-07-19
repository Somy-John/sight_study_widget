# 0. Widjets
- Flutter 위젯은 React에서 영감을 얻어 제작된 프레임워크다. 
- 위젯의 핵심 아이디어는 UI를 위젯에서 빌드하는 것이다. 
- 위젯은 현재 설정과 상태에 따라 표현되며, state(상태) 변화에 따라 app이 자동으로 재빌드 된다.
- Widget build(BuildContext context) 함수의 구현(implement)을 통해 위젯을 만들 수 있다.  

# 1. runApp
  ```dart
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
      home: MyHomePage(title: 'Sight flutter study',),
    );
  }
}
  ```
[runApp]: <https://api.flutter.dev/flutter/widgets/runApp.html>

[runApp]함수는 주어진 [Widget]을 가져 와서 트리의 루트로 만든다.
이 예시에서 위젯 트리의 루트는 SightStudy 위젯이 된다. Flutter는 루트 위젯이 화면을 덮도록(화면에 나타나도록) 한다. 

[Widget]: https://api.flutter.dev/flutter/widgets/Widget-class.html

앱을 작성할 때 위젯의 state 관리여부에 따라 StatelessWidget 또는 StatefulWidget의 하위 클래스를 작성한다. StatelessWidget은 말 그대로 state를 다루지 않는, 화면이 로드될 때 한번만 그려주고 변하지 않는 위젯이다. StatefulWidget은 state를 다루는 위젯인데, 앱이 동작하는 동안 Data 변경이 필요한 경우 화면을 다시 그려주는 위젯이다. 자세한 부분은 다음 시간에 배울 것이다.   
  
참고링크: [StatelessWidget과 StatefulWidget]

[StatelessWidget과 StatefulWidget]: https://here4you.tistory.com/220

# 2. Basic Widgets / Classes
- [Scaffold] 
  ![image](https://user-images.githubusercontent.com/63829204/126207210-64988043-396c-432d-87a8-617a9b554187.png)
  Scaffold 위젯은 말 그대로 발판이다. 이 발판 위에 여러 위젯을 배치하는 것이다. 플러터 앱을 만들었을 때 하얀 바탕이 바로 Scaffold이다. (원래는 검은 바탕이다...!) 
  여러 위젯을 인수로 사용하며, 각 위젯은 시용자가 지정한 위치의 Scaffold 레이아웃에 배치된다.   

  [Scaffold]:https://api.flutter.dev/flutter/material/Scaffold-class.html
---
- [AppBar]
  ![image](https://user-images.githubusercontent.com/63829204/126207813-ba02f72c-3799-40e5-803b-5f6f1b463914.png)
  AppBar 위젯을 사용하면 아이콘 버튼 위젯과 제목 위젯의 작업을 전달할 수 있다. 이러한 패턴은 프레임 워크 전체에서 반복되며 자체 위젯을 디자인 할 때 고려할 수 있다.

  [AppBar]: https://api.flutter.dev/flutter/material/AppBar-class.html
-----
- [Container]   
  Container 위젯은 말 그대로 다른 위젯이 들어갈 사각형 공간을 만드는 위젯이다. 컨테이너는 [BoxDecoration] 위젯으로 배경, 그림자, 테두리 등과 같은 요소들로 꾸밀 수 있다. 또한  margin, padding 도 설정할 수 있다.
  
  [Container]: https://api.flutter.dev/flutter/widgets/Container-class.html
  [BoxDecoration]: https://api.flutter.dev/flutter/painting/BoxDecoration-class.html
----
- [Row], [Column]    
  Row 와 Column 과 같은 flex widget 을 사용하면, 가로 (Row) 및 세로 (Column) 방향으로 유연한 레이아웃을 만들 수 있다. 이 개체의 디자인은 웹의 플렉스 박스 레이아웃 모델을 기반으로한다.

  [Row]: https://api.flutter.dev/flutter/widgets/Row-class.html
  [Column]: https://api.flutter.dev/flutter/widgets/Column-class.html
---
- [DefaultTabController]
  ![image](https://user-images.githubusercontent.com/63829204/126208236-5b0d817e-bf70-4721-8512-d2ba7bd4af8a.png)
  DefaultTabController는 흔히 알고있는 '네비게이션바'와 같은 위젯이다. DefaultTabController를 이용하면 전환효과와 슬라이드해서 다른 화면으로 전환이 가능하다.
  <br>
  참고 : 탭을 사용하기위해서는 선택된 탭과 컨텐츠 섹션이 동기화되어야 한다. 이런 작업을 해주는 것이 [TabContoroller]클레스이다. 이 [TabContoroller]클레스는 사용자가 만들거나 DefaultTabController위젯을 사용해서 자동으로 만들수도 있다.
  

  [DefaultTabController]: https://api.flutter.dev/flutter/material/DefaultTabController-class.html
  [TabContoroller]: https://api.flutter.dev/flutter/material/TabController-class.html 
----
- [ElevatedButton]
  ![image](https://user-images.githubusercontent.com/63829204/126202802-757c75bc-23d0-4b0c-b3bb-4af15f69e5fc.png)

  ElevatedButton은 평평한 [Layout]에 깊이감을 주기 위해서 사용한다. 그래서 이미 깊이감이 있는 dialog 혹은 card에는 사용하는 것을 자제해야 한다.
  ElevatedButton.icon을 이용해 버튼에 아이콘을 넣을 수 있다.
  
  [Layout]: https://flutter-ko.dev/docs/development/ui/widgets/layout

  [ElevatedButton]: https://api.flutter.dev/flutter/material/ElevatedButton-class.html    
-----
- [TextButton]
  ![image](https://user-images.githubusercontent.com/63829204/126202845-b21bd698-4e33-44df-b094-85931f66cc33.png)

  텍스트 버튼은 경계선 없이 텍스트로만 이루어진 버튼이다. 사용자가 버튼인지 인식하기 어려울 수 있기 때문에 버튼을 배치하는 위치가 중요하다고 볼 수 있다.
  ElevateButton과 마찬가지로 TextButton.icon을 이용해 버튼에 아이콘을 넣을 수 있다.

  [TextButton]: https://api.flutter.dev/flutter/material/TextButton-class.html
-----
- [OutlinedButton]
  ![image](https://user-images.githubusercontent.com/63829204/126203271-06b3c3ce-b6a3-47e2-a1d6-1280b81c0a28.png)

  TextButton에 경계선이 추가된 버튼이라고 볼 수 있다.
  OutlinedButton.icon을 이용해 버튼에 아이콘을 넣을 수 있다.
    
  [OutlinedButton]: https://api.flutter.dev/flutter/material/OutlinedButton-class.html
-----
- [IconButton]
  ![image](https://user-images.githubusercontent.com/63829204/126203425-92d30aab-c251-413f-9483-e47abad20555.png)

  icon만으로 이루어진 버튼이다. 다른 버튼들과는 다르게 child가 아니라 icon parameter를 통해 icon을 지정할 수 있다. 또, iconSize를 통해서 버튼의 크기를 조정할 수 있다.
    
  [IconButton]: https://api.flutter.dev/flutter/material/IconButton-class.html
-----
- [ButtonBar]
  
  ![image](https://user-images.githubusercontent.com/63829204/126204618-e0de7c7d-3db2-4ea4-9d1b-170afd20b41f.png)

  ButtonBar는 end-aligned 정렬의 버튼 Row로, button들을 정렬해주는 역할을 한다. 만약 공간이 부족하다면, column으로 layout 된다. 

  [ButtonBar]: https://api.flutter.dev/flutter/material/ButtonBar-class.html
------
# 3. Using Material Components

Flutter는 Material design을 따르는 앱을 빌드하는 데 도움이되는 다양한 위젯을 제공한다. Material 앱은 MaterialApp위젯으로 시작 한다. 문자열로 식별되는 위젯 스택을 관리하는 [Navigator]를 포함한 앱의 root에 유용한 여러가지 위젯을 빌드한다. [Navigator]를 사용하면 응용 프로그램 화면간 원활한 전환을 할 수 있다.

[Navigator]: https://api.flutter.dev/flutter/widgets/Navigator-class.html
      
참고: [Material Components widgets]과 [Cupertino widgets]을 사용하면 앱을 더 쉽고 예쁘게 만들 수 있다.

[Material Components widgets]: https://flutter-ko.dev/docs/development/ui/widgets/material
[Cupertino widgets]: https://flutter.dev/docs/development/ui/widgets/cupertino

# 4. 간단한 예제
다음은 위에서 소개한 위젯들을 이용한 간단한 예제이다. 

소스코드: https://github.com/Somy-John/sight_study_widget/blob/main/lib/main.dart

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
```
material과 cupertino 페키지를 가져왔다. 
material은 안드로이드의 UI를 담고있으며,
cupertino는 iOS의 UI를 담고 있다.

~~구글에서 아이폰 스타일이라고 할 수 없으니 애플본사가 있는 지역명인 Cupertino라고 했다는 말도 있다.~~
```dart
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
```
위에서 배웠듯이 runApp을 통해 SightStudy라는 위젯을 루트위젯으로 설정하고, 화면에 나타나도록 해주었다. SightStudy의 home은 WidgetTest로 설정해두었다.
```dart
class WidgetTest extends StatefulWidget {
  WidgetTest({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _WidgetTestState createState() => _WidgetTestState();
}
```
STF인 WidgetTest의 state를 생성해주었다.
```dart
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
```
counter에 쓰일 함수와 변수, IconButton에 쓰일 아이콘 변수를 생성해 주었다.
[setState]는 state를 업데이트할 때 쓰는 메소드이다.
setState를 호출하지 않고 상태를 직접 변경하면 경로에 재빌드가 예약되지 않는다. 즉, 렌더링이 업데이트되지 않는다.

[setState]: https://api.flutter.dev/flutter/widgets/ModalRoute/setState.html
```dart
  @override
  Widget build(BuildContext context) {
    //DefaultTabController위젯을 이용할 것이므로 DefaultTabController를 리턴해준다.
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          //여기서 widget.title은 SightStudy의 home위젯인 widgetTest의 title이다.
            appBar: AppBar(
              title: Text(widget.title),
            ),
          //
            body: TabBarView(
              // TabBarView는 chiledren에 배열을 넘겨준다. 배열 안에 위젯들을 구성할 수 있다.
              children: [
                // 카운터의 코드이다.
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
                // iOS스타일 시간 선택 위젯이다.
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
                // onPressed에 버튼이 눌러졌을 때의 동작들을 지정해줄 수 있다.
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
                      // ButtonBar를 보여주기 위해 Card를 사용하였다.
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

// DefaultTabController위젯의 bottomNavigationBar 파라미터에 다음 코드를 지정해주면, DefaultTabController를 디자인할 수 있다!
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

```