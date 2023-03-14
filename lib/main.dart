
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'container.dart';
import 'widget.dart';
import 'widget22.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key ? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedValue = 0;
  void _showPicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) =>  SizedBox(
              width: 300,
              height: 250,
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 30,
                scrollController: FixedExtentScrollController(initialItem: 1),
                children: const [
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
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
             const Icon(
                Icons.add,
                color: Colors.red,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 20.0,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 147, 146, 146),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                            ),
                            Text(
                              'Назад',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 9,
                child: Container(
                  height: MediaQuery.of(context).size.height * 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
            const  Padding(
                padding:  EdgeInsets.only(top: 100),
                child: Text(
                  'выбрать стол',
                  style: TextStyle(fontSize: 25),
                ),
              ),
           const   Padding(
                padding:  EdgeInsets.only(left: 220, top: 100),
                child: Text(
                  'Банкетный залы',
                  style: TextStyle(fontSize: 25),
                ),
              ),
           const   Padding(
                padding:  EdgeInsets.only(left: 200, top: 190),
                child: Column(
                  children: [
                    Text('10 Челевек', style: TextStyle(fontSize: 25)),
                    SizedBox(
                      height: 70,
                    ),
                    Text('15 Человек', style: TextStyle(fontSize: 25)),
                    SizedBox(
                      height: 70,
                    ),
                    Text('20 Человек', style: TextStyle(fontSize: 25))
                  ],
                ),
              ),
            const  Padding(
                padding:  EdgeInsets.only(
                  top: 215,
                ),
                child: Row(
                  children: [
                    Text(
                      'Забронирован',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Забронирован',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            const  Padding(
                padding:  EdgeInsets.only(top: 295, left: 85),
                child: Text(
                  'Ваш стол',
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
            const  Padding(
                padding:  EdgeInsets.only(top: 345, left: 335),
                child: Text(
                  'Забронирован',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            const  Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding:
                               EdgeInsets.only(bottom: 150, right: 100),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  widgeter_1(
                                    text: '1',
                                    red: Color.fromARGB(255, 118, 14, 7),
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  widgeter_1(
                                    text: '2',
                                    red: Colors.green,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  widgeter_1(
                                    text: '3',
                                    red: Color.fromARGB(255, 118, 14, 7),
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  widgeter_1(
                                    text: '4',
                                    red: Colors.green,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  widgeter_1(
                                    text: '5',
                                    red: Colors.blue,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  widgeter_1(
                                    text: '6',
                                    red: Colors.green,
                                    razmer: 50,
                                    razmer2: 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 600,
                        ),
                        Column(
                          children: [
                            widget22(
                              razmer22: 80,
                              razmer233: 80,
                              red: Colors.blue,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            widget22(
                              razmer22: 80,
                              razmer233: 80,
                              red: Color.fromARGB(255, 118, 14, 7),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            widget22(
                              razmer22: 80,
                              razmer233: 80,
                              red: Colors.blue,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
           const   Divider(
                height: 900,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
             const Padding(
                padding:  EdgeInsets.only(top: 470, left: 10),
                child: Text(
                  ' гостей:',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            const  Divider(
                height: 1000,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: Colors.black,
              ),
            const  Padding(
                padding:  EdgeInsets.only(top: 515, left: 10),
                child: Text('Время',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            const  Padding(
                padding:  EdgeInsets.only(top: 550),
                // child: container2(),
              ),
         const     Padding(
                padding:  EdgeInsets.only(top: 700, left: 10),
                child: Text(
                  '16:30',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 800,
                ),
                child:  Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Оформить заказ',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    height: 50,
                    width: 250,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 450,
                      ),
                      child: CupertinoButton(
                        child: Text(
                          '$_selectedValue',
                          style:const TextStyle(fontSize: 30),
                        ),
                        onPressed: () => _showPicker(context),
                      ),
                    ),
                   const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
