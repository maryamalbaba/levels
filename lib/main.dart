import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:level_map/level_map.dart';

void main() {
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      //  backgroundColor: Colors.white,
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 80*2,right: 81*2,bottom: 36*2,
            top: 40*2
            ),
            color: Colors.black,
            height: 200*2,
  width: 200.0*2,
  child: Center(
    child: TextLiquidFill(
    
      text: 'S',
      waveColor: Colors.brown,
    boxBackgroundColor: Colors.pink,
      textStyle: TextStyle(
        fontSize: 130,
        fontWeight: FontWeight.normal,
      ),
      boxHeight: 90,
    // boxWidth: 110,
      
    ),
  ),
)
        ),
      ),
    );
  }
}
class kit extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(body: Center(
        child: AnimatedTextKit(animatedTexts: [ FadeAnimatedText(
          'S 1',
          textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        ScaleAnimatedText(
          'S 2',
          textStyle: TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
        ),
        
         TypewriterAnimatedText(
          'S 3',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 2000),
        ),
        
        ],),
      ),),
       
    );
  }
}

class LevelMapPage extends StatefulWidget {
  @override
  _LevelMapPageState createState() => _LevelMapPageState();
}

class _LevelMapPageState extends State<LevelMapPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: LevelMap(
            // backgroundColor: Colors.limeAccent,
            levelMapParams: LevelMapParams(
              levelCount: 2,
              currentLevel: 1.5,
              pathColor: Colors.brown,
              currentLevelImage: ImageParams(
                path: "asset/books.png",
                size: Size(40, 47),
              ),
              lockedLevelImage: ImageParams(
                path: "asset/books.png",
                size: Size(40, 42),
              ),
              completedLevelImage: ImageParams(
                path: "asset/books.png",
                size: Size(40, 42),
              ),
              // startLevelImage: ImageParams(
              //   path: "asset/books.png",
              //   size: Size(60, 60),
              // ),
              // pathEndImage: ImageParams(
              //   path: "asset/books.png",
              //   size: Size(60, 60),
              // ),
              bgImagesToBePaintedRandomly: [],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.black,
        //   child: Icon(
        //     Icons.bolt,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     setState(() {
        //       //Just to visually see the change of path's curve.
        //     });
        //   },
        // ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            //padding: EdgeInsets.only(top: 60),
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Align(
               alignment: Alignment.center,
              child: Center(
                child: Container( width: 350,
                  padding: EdgeInsets.only(bottom: 1),
                  child: TextLiquidFill(
                    text: 'S',
                    waveColor: const Color.fromARGB(255, 220, 172, 154),
                    boxBackgroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 660,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    boxHeight: 300,
                  ),
                ),
                        
                        ),
            ),
          ),
        ),
      ),
    );
  }
}
