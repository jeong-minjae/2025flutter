import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog with Gesture'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context),
          child: Text('Hello world'),
          ),
      ),
    );
    
  }//build
  _showDialog(BuildContext context){
    showDialog(//함수
      context: context ,
      barrierDismissible: false,//다른데 눌러서 안꺼지게 방지
      barrierColor: Colors.red,
      builder: (ctx) {
        return AlertDialog(//그림 그리는애  위젯
          title: Text('Alert Title'),
          content: Text("Hello world를\n Touch 하셨습니다"),
          backgroundColor: Colors.amber,
          actions: [
            Center(
              child: TextButton(
                 onPressed: () => Navigator.of(ctx).pop(),
                 child: Text('종료')),
            )
          ],
        );
      },
      );

  }



}