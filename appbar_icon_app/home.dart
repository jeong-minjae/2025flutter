import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("App bar icon"),
            Text('---------------'),
          
          ],
        ),
        centerTitle: true,
        leading: IconButton(//appbar 앞에 넣는거 대채제가 있다 appbar 앞에는 하나만 가능 
          onPressed: () {
            
          },
          icon: Icon(Icons.menu)),
          actions: [//app bar 뒤에 채우기 ㅇ액션뒤에는 여러개를 넣을수있음 children
            IconButton(
              onPressed: () {
                
              }
            , icon: Icon(Icons.email)),
            IconButton(
              onPressed: () {
                
              }
            , icon: Icon(Icons.alarm)),
            IconButton(
              onPressed: () {
                
              }
            , icon: Icon(Icons.add_to_drive_outlined)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,30,0),
              child: GestureDetector( //text 나 이미지에  행동을 부여?
              onTap: () {
                print('smile images is tapped');
              },
                child: Image.asset(
                  'images/smile.png',
                  width: 30,
                ),
              ),
            )
              

          ],
        backgroundColor: Colors.amber,
        toolbarHeight: 100,//appbar 높이 적용
      ),
    );
  }
}