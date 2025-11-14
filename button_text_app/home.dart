import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();//보안 private
}

class _HomeState extends State<Home> {
  //property 와
 late String buttonState;//late:지금은 값을 안주고 좀이따 주는 initState에서 준다  첫번째 실행 전역변수
 late String buttonText;
 late Color appBarColor;
 late Color backgroundColor;
  


 @override
  void initState() {
    // TODO: implement initState 2번째 실행 그리고 build 실행 초기값 정의 
    super.initState();
    buttonState='OFF';
    buttonText ='버튼을 누르세여';
    appBarColor=Colors.red;
    backgroundColor=Colors.amber;
  
  }

  //construct
  //method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Flutter Life cycle'),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                onPressed:() => buttonchange(),
                child: Text(buttonText)
                ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text('버튼상태 :$buttonState'),
                    //변수로 써야 바꿀수있다 
               ],)


          ],
        ),
      ),
    );
  }//build
  //functions-----------------------------
  buttonchange(){
    if(buttonState=='OFF'){//토글기능 
      buttonState ='ON';
      buttonText='버튼을 누르세여';
      appBarColor=Colors.blue;
      backgroundColor=Colors.white;
    }else{
    buttonState='OFF';
    appBarColor =Colors.red;
    backgroundColor=Colors.amber;
        buttonText ='Press Button';
    }

  
  
    setState(() {});//위젯 상태 갱신 
    
  }

}//class