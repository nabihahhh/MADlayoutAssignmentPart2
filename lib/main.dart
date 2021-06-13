import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tapped = false;
  String textValue = "test";
  String _textString1 = 'OFF';
  String _textString2 = 'OFF';
  String _textString3 = 'OFF';
  String _textString4 = 'OFF';
  String _textString5 = 'OFF';
  String _textString6 = 'OFF';
  Image img1; // variable named image to be named with the path
  Image img2;
  Image img3;
  Image img4;
  Image img5;
  Image img6;
  Image imgDown = Image.asset(
    'web/icons/on.jpg',
    scale: 0.2,
  ); //pressed button path
  Image imgUp = Image.asset(
    'web/icons/off.jpg',
    scale: 0.2,
  ); //unpressed button path

  void initState() {
    super.initState();
    img1 = imgUp; //inizialize the image as imgUp version
    img2 = imgUp;
    img3 = imgUp;
    img4 = imgUp;
    img5 = imgUp;
    img6 = imgUp;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(text: "Livingroom"),
                Tab(
                  text: "Bedroom",
                ),
                Tab(icon: Icon(Icons.more_horiz)),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 2.0,
              indicatorColor: Colors.blue[200],
            ),
            title: Text("My Home", style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.grey[300],
          body: TabBarView(
            children: [
              /*body1*/
              Center(
                  child: GridView.extent(
                primary: false,
                padding: const EdgeInsets.all(16),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 200.0,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle1(),
                        Expanded(
                          flex: 1,
                          child: img1,
                        ),
                        const Text('Plug Ammar',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString1,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle2(),
                        Expanded(
                          flex: 1,
                          child: img2,
                        ),
                        const Text('Bilik Hannah',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString2,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle3(),
                        Expanded(
                          flex: 1,
                          child: img3,
                        ),
                        const Text('Gate Light Switch',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString3,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle4(),
                        Expanded(
                          flex: 1,
                          child: img4,
                        ),
                        const Text('Plug 3 Patio',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString4,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle5(),
                        Expanded(
                          flex: 1,
                          child: img5,
                        ),
                        const Text('Front Door Lights',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString5,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle6(),
                        Expanded(
                          flex: 1,
                          child: img6,
                        ),
                        const Text('Parking Lights',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString6,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              )),
              /*body2*/
              Center(
                  child: GridView.extent(
                primary: false,
                padding: const EdgeInsets.all(16),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 200.0,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle3(),
                        Expanded(
                          flex: 1,
                          child: img3,
                        ),
                        const Text('Gate Light Switch',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString3,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle4(),
                        Expanded(
                          flex: 1,
                          child: img4,
                        ),
                        const Text('Plug 3 Patio',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString4,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle5(),
                        Expanded(
                          flex: 1,
                          child: img5,
                        ),
                        const Text('Front Door Lights',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString5,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle6(),
                        Expanded(
                          flex: 1,
                          child: img6,
                        ),
                        const Text('Parking Lights',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString6,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  )
                ],
              )),
              /*body3*/
              Center(
                  child: GridView.extent(
                primary: false,
                padding: const EdgeInsets.all(16),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 200.0,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle1(),
                        Expanded(
                          flex: 1,
                          child: img1,
                        ),
                        const Text('Plug Ammar',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString1,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildCircle2(),
                        Expanded(
                          flex: 1,
                          child: img2,
                        ),
                        const Text('Bilik Hannah',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left),
                        Text(_textString2,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              )),
              /*body4*/
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }

  /*Widget _buildCircleA({IconData icon, bool isPressed}) {
    return GestureDetector(
      onTap: () => setState(() => isPressed = false),
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isPressed ? Colors.blue : Colors.grey, width: 3),
        ),
        child: Icon(icon, size: 26, color: (isPressed) ? Colors.blue : null),
      ),
    );
  }*/

  Widget _buildCircle1() {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (tapped == false) {
              tapped = true;
              img1 = imgDown;
              print("on");
              _doSomethingOn1();
            } else {
              tapped = false;
              img1 = imgUp;
              print("off");
              _doSomethingOff1();
            }
          });
        },
        /*  onTapUp: (_) {
        setState(() {
          tapped = false;
        });
      },*/
        child: new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: tapped ? Colors.blue : Colors.grey, width: 2)),
              child: Icon(
                Icons.power_settings_new,
                color: tapped ? Colors.blue : Colors.grey,
                size: 26.0,
              ),
            )));
  }

  Widget _buildCircle2() {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (tapped == false) {
              tapped = true;
              img2 = imgDown;
              print("on");
              _doSomethingOn2();
            } else {
              tapped = false;
              img2 = imgUp;
              print("off");
              _doSomethingOff2();
            }
          });
        },
        /*  onTapUp: (_) {
        setState(() {
          tapped = false;
        });
      },*/
        child: new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: tapped ? Colors.blue : Colors.grey, width: 2)),
              child: Icon(
                Icons.power_settings_new,
                color: tapped ? Colors.blue : Colors.grey,
                size: 26.0,
              ),
            )));
  }

  Widget _buildCircle3() {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (tapped == false) {
              tapped = true;
              img3 = imgDown;
              print("on");
              _doSomethingOn3();
            } else {
              tapped = false;
              img3 = imgUp;
              print("off");
              _doSomethingOff3();
            }
          });
        },
        /*  onTapUp: (_) {
        setState(() {
          tapped = false;
        });
      },*/
        child: new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: tapped ? Colors.blue : Colors.grey, width: 2)),
              child: Icon(
                Icons.power_settings_new,
                color: tapped ? Colors.blue : Colors.grey,
                size: 26.0,
              ),
            )));
  }

  Widget _buildCircle4() {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (tapped == false) {
              tapped = true;
              img4 = imgDown;
              print("on");
              _doSomethingOn4();
            } else {
              tapped = false;
              img4 = imgUp;
              print("off");
              _doSomethingOff4();
            }
          });
        },
        /*  onTapUp: (_) {
        setState(() {
          tapped = false;
        });
      },*/
        child: new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: tapped ? Colors.blue : Colors.grey, width: 2)),
              child: Icon(
                Icons.power_settings_new,
                color: tapped ? Colors.blue : Colors.grey,
                size: 26.0,
              ),
            )));
  }

  Widget _buildCircle5() {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (tapped == false) {
              tapped = true;
              img5 = imgDown;
              print("on");
              _doSomethingOn5();
            } else {
              tapped = false;
              img5 = imgUp;
              print("off");
              _doSomethingOff5();
            }
          });
        },
        /*  onTapUp: (_) {
        setState(() {
          tapped = false;
        });
      },*/
        child: new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: tapped ? Colors.blue : Colors.grey, width: 2)),
              child: Icon(
                Icons.power_settings_new,
                color: tapped ? Colors.blue : Colors.grey,
                size: 26.0,
              ),
            )));
  }

  Widget _buildCircle6() {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (tapped == false) {
              tapped = true;
              img6 = imgDown;
              print("on");
              _doSomethingOn6();
            } else {
              tapped = false;
              img6 = imgUp;
              print("off");
              _doSomethingOff6();
            }
          });
        },
        /*  onTapUp: (_) {
        setState(() {
          tapped = false;
        });
      },*/
        child: new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: tapped ? Colors.blue : Colors.grey, width: 2)),
              child: Icon(
                Icons.power_settings_new,
                color: tapped ? Colors.blue : Colors.grey,
                size: 26.0,
              ),
            )));
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOn1() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString1 = 'ON';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOff1() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString1 = 'OFF';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOn2() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString2 = 'ON';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOff2() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString2 = 'OFF';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOn3() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString3 = 'ON';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOff3() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString3 = 'OFF';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOn4() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString4 = 'ON';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOff4() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString4 = 'OFF';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOn5() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString5 = 'ON';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOff5() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString5 = 'OFF';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOn6() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString6 = 'ON';
    });
  }

  // this private method is run whenever the button is pressed
  void _doSomethingOff6() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString6 = 'OFF';
    });
  }
}
