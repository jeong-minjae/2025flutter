import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   late TextEditingController textEditingController;
   late TextEditingController textEditingController2;
   late String bmitext;   
   late double bmi;
   late String result;
   late String bmiImages;
  @override
  void initState() {
    super.initState();
    textEditingController =TextEditingController();
    textEditingController2=TextEditingController();
    bmiImages='images/bmi.png';
    bmitext='';
    
    bmi=0;
    result ='';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI 계산기'
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
            
              
              decoration: InputDecoration(labelText: '신장을 입력해주세여 '),
              keyboardType: TextInputType.number, //키보드 스타일
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController2,
            
             
              decoration: InputDecoration(labelText: '몸무게를 입력해주세요'),
              keyboardType: TextInputType.number, //키보드 스타일
            ),
          ), 


              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () => addfunction() ,
                  child: Text("BMI 계산하기"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(result,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                
                ),),
              ),

              SizedBox
              
              (child: Image.asset(bmiImages),
              width:400,
              height:400,),



        ],
      ),
    );


  }//build


  bmiFunction(){
      double sum1 = double.parse(textEditingController.text.trim());
      double sum2 = double.parse(textEditingController2.text.trim());
      double sum3=sum1/100;
       bmi=sum2/ (sum3*sum3);
       bmi.toStringAsFixed(1);
      


  }

bmiCheck3(){
   if(bmi<18.5){
    bmitext=("귀하는 저체중입니다");
    bmiImages='images/underweight.png';

  }else if(bmi<=22.9){
    bmitext= ('귀하는 정상체중입니다');
    bmiImages='images/normal.png';
  }
  
  else if(bmi<25){
    bmitext= ('귀하는 과체중 입니다');
    bmiImages='images/risk.png';

  }else if(bmi<30){
     bmitext=('귀하는 경도비만입니다입니다');
     bmiImages='images/overweight.png';
  }else if(bmi<35){
     bmitext=('귀하는 고도비만입니다');
     bmiImages='images/obese.png';
  }

  setState(() {
    
  });

}

   addfunction() {
    if (textEditingController.text.trim().isNotEmpty&&textEditingController2.text.trim().isNotEmpty) {
      bmiFunction();
      bmiCheck3();
      result =
          ('귀하의 BMI 지수는 ${bmi.toStringAsFixed(1)}이고 $bmitext 입니다');
    } else {//toString()  int에서 String으로 바꾸기 숫자는 암호화가 힘들기 때문에 스트링으로 바꿔주는게 좋다 
      errorSnackbar();
      bmiImages='images/bmi.png';
     result=' ';
    }
    setState(() {});
 }

 errorSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('키랑 몸무게를 입력하세요'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }









}//class