import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
       // 디버그 표시를 없앤다.
      debugShowCheckedModeBanner: false,
      title: '개발자 소개',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DeveloperInfoScreen(),
    );
  }
}

class DeveloperInfoScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('개발자 소개'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              '개발자 이름',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '개발자 소개',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '연락처: 010-4078-3625',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '이메일: 개발자 이메일',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        
      ),
      
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '화면 밝기 변경',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BrightnessControlScreen(),
    );
  }
}

class BrightnessControlScreen extends StatefulWidget {
  @override
  _BrightnessControlScreenState createState() => _BrightnessControlScreenState();
}

class _BrightnessControlScreenState extends State<BrightnessControlScreen> {
  double _brightnessValue = 0.5; // 초기 밝기 값

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('화면 밝기 변경'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('화면 밝기 조절'),
            SizedBox(height: 20),
            Slider(
              value: _brightnessValue,
              onChanged: (newValue) {
                setState(() {
                  _brightnessValue = newValue;
                  // 밝기 변경
                  SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle(
                      statusBarBrightness: newValue == 1.0 ? Brightness.light : Brightness.dark,
                    ),
                  );
                });
              },
              min: 0.0,
              max: 1.0,
              divisions: 10,
              label: _brightnessValue.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
*/