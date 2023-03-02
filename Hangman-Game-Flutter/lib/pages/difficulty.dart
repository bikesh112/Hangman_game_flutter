import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mr_hangman/pages/gameplay.dart';
import 'package:timercounter/timercounter.dart';



class Difficulty extends StatefulWidget {
  const Difficulty({Key? key}) : super(key: key);

  @override
  State<Difficulty> createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  TimerCounter ?_timeCounter;
  int counter = 10;

  @override
  void dispose() {
    _timeCounter?.stop();
    super.dispose();
  }

  void _beginTimer() {
    _timeCounter = TimerCounter.begin(duration: counter, callback: (index){
      setState(() {
        counter = index == 0 ? 10 : index;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Difficulty'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Color(0xFFFFD500),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(height: 30.0,),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
                child: ExpansionTile(
                  // shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
                  title: Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/img_1.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(width: 25.0,),
                      Text('Easy'),

                    ],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,15.0,0.0,15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7.0,horizontal: 15.0),
                                  child: Text('7 tries',
                                    style: TextStyle(
                                        fontSize: 17.0
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                              const SizedBox(width: 130.0,),
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        )
                                    )
                                ),
                                onPressed: (){
                                  Navigator.pushReplacementNamed(context, '/loading', arguments: {
                                    'diff': 'easy'
                                  });
                                },
                                icon: Icon(Icons.not_started_outlined),
                                label: Text('Start'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
                child: ExpansionTile(
                  // shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
                  title: Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/img_2.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(width: 25.0,),
                      Text('Medium'),

                    ],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,15.0,0.0,15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7.0,horizontal: 15.0),
                                  child: Text('5 tries',
                                    style: TextStyle(
                                        fontSize: 17.0
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                              const SizedBox(width: 130.0,),
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        )
                                    )
                                ),
                                onPressed: (){
                                  Navigator.pushReplacementNamed(context, '/loading', arguments: {
                                    'diff': 'med'
                                  });
                                },
                                icon: Icon(Icons.not_started_outlined),
                                label: Text('Start'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Card(
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
                child: ExpansionTile(
                  // shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 1), borderRadius: BorderRadius.circular(5)),
                  title: Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/img_3.png'),
                        height: 50.0,
                        width: 50.0,
                      ),
                      SizedBox(width: 25.0,),
                      Text('Hard'),

                    ],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,15.0,0.0,15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7.0,horizontal: 15.0),
                                  child: Text('3 tries',
                                    style: TextStyle(
                                        fontSize: 17.0
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(13.0),
                                ),
                              ),
                              SizedBox(width: 130.0,),
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(13.0),
                                        )
                                    )
                                ),
                                  onPressed: (){
                                    Navigator.pushReplacementNamed(context, '/loading', arguments: {
                                      'diff': 'hard'
                                    });
                                  },
                                  icon: Icon(Icons.not_started_outlined),
                                  label: Text('Start'),

                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
