import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: sandar3(),
    );
  }
}

class sandar3 extends StatefulWidget {
  @override
  sandar2 createState() => sandar2();
}

class sandar2 extends State<sandar3> {
  int _selectedValue = 0;
  void _showPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              width: 300,
              height: 250,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children:const [
                  Text('0'),
                  Text('1'),
                  Text('2'),
                  Text('3'),
                  Text('4'),
                  Text('5'),
                  Text('6'),
                  Text('7'),
                  Text('8'),
                  Text('9'),
                  Text('10'),
                  Text('11'),
                  Text('12'),
                  Text('13'),
                  Text('14'),
                  Text('15'),
                  Text('16'),
                  Text('17'),
                  Text('18'),
                  Text('19'),
                  Text('20'),
                ],
                onSelectedItemChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                child: Text('Show The Cupertino Picker'),
                onTap: () => _showPicker(context),
              ),
            const  SizedBox(height: 30),
              Text('Value: $_selectedValue'),
            ],
          ),
        ),
      ),
    );
  }
}
