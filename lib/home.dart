import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert and push'),
      ),
    body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context,'2nd'),
        child: Text('Move the 2nd page')),
    ),
    );
  }//build

   
   _showDialog(BuildContext context,String move){
      
    showDialog(//함수
      context: context ,
      barrierDismissible: false,//다른데 눌러서 안꺼지게 방지
      
      builder: (ctx) {
        return AlertDialog(//그림 그리는애  위젯
          title: Text('Page 이동'),
          content: Text("아래의 버튼을 누르면 페이지 이동을 합니다"),
          backgroundColor: Colors.amber,
          actions: [
            Center(
              child: TextButton(//버튼을 달아주고 동작하는 코드  버튼을 누르면 페이지 이동을 하고 떠있던 팝업창은 없어진다 
                 onPressed:() {Navigator.pop(ctx); Navigator.pushNamed(ctx, move);}, 
                 child: Text('page 이동')),
            )
          ],
        );
      },
      );

  }
}