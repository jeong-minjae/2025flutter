import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextButton(onPressed:() => printText('short'), //클릭했을때  파라미터 써서 나오는 텍스트 분류
            onLongPress: () => printText('Long'),//길게 눌렀을때 
              
              //여기에 쓰는 코드는 다트언어   =>Fat arow
         
            style: TextButton.styleFrom(
              foregroundColor: Colors.red
              ),
             child: Text(
              'TextButton',
              style: TextStyle(
                fontSize: 20
              ),
              )),
          ElevatedButton(onPressed:() => printDan(5),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
                )
              ),
              child: Text("구구단 5단 출력"),
          ),
          OutlinedButton(
            onPressed: () => printDan(7),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.green,
              side: BorderSide(//out라인 선 꾸미기
                color: Colors.black,
                width: 2.0,
              )
            ),
            child: Text('구구단 7단 출력'),
            ),
          TextButton.icon(
            onPressed: () {
              
            }, 
            label: Text("Go To Home"),
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.red,
              
            ),
            ),
          ElevatedButton.icon(
            onPressed: () {
              
            }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10)
                ),
                minimumSize: Size(150, 40),
                
              ),
            label: Text(
              'Go '
              
            ),
            icon: Icon(
              Icons.home
            ),
          
            ),
          OutlinedButton.icon(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.home
            ),
            label: Text(
              'home'
              )
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                onPressed: () {
                  
                },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue
                ),
                child: Text(
                  'TextButton'
                )),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: BeveledRectangleBorder(
                       borderRadius: BorderRadiusGeometry.circular(4)
                      )
                    ),
                  child: Text(
                    "ElevatedButton",
                    )
                  ),
              ],
            ),
          )
          ],
        ),
      ),
    );
    
  }//bulid
  // ---------functions
  printText(String message){//build 안에 쓰면 안됨 
    print("Text Button is $message  clicked.");
  }

  printDan(int dan){
    
    for(int i=1;i<10;i++){
      print("$dan x $i = ${dan*i}");
    }
  }
}//home