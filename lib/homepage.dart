import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List Question = [
    "Lion is the National animal of India?",
    "Virat Kohli is an Indian Cricket Player?",
    "Sachin Tendurkal is one of greatest player of India?",
    "Narendra Modi is India's PM?",
  ];
  List Ans = [false, true, true, true];
  List Userans = [];
  int i = 0;
  int Point=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Quizw game"),
        leading: IconButton(
            onPressed: () {
              setState(() {
                i = 0;
                Point=0;
              });
            },
            icon: Icon(Icons.refresh_outlined)),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "${Question[i]}",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blue.shade900,
                blurRadius: 10,
              )
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Userans.add(true);
              setState(() {
                if (i < 3) {
                  i++;
                }
              });
            },
            child: Text(
              "True",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Userans.add(false);
              setState(() {
                if (i < 3) {
                  i++;
                }
              });
            },
            child: Text(
              "False",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          )
        ],
      ),
    ));
  }

  void point()
  {
    for(int i=0;i<Ans.length;i++)
      {
        if(Ans[i]==Userans[i])
          {
            Point++;
          }
      }
  }
}
