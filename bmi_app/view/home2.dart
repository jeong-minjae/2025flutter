import 'package:bmi_app/vm/calc_bmi.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  late TextEditingController  weightContriller;
  late TextEditingController  heightContriller;
  late String result;
  late String imageresult;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weightContriller =TextEditingController();
    heightContriller=TextEditingController();
    result='';
    imageresult='';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: heightContriller,
            
              
              decoration: InputDecoration(labelText: '신장을 입력해주세여 '),
              keyboardType: TextInputType.number, //키보드 스타일
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: weightContriller,
            
             
              decoration: InputDecoration(labelText: '몸무게를 입력해주세요'),
              keyboardType: TextInputType.number, //키보드 스타일
            ),
          ), 

           Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () => calcFuntion() ,
                  child: Text("BMI 계산하기"),
                ),
              ),
              Text(result,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),

              Image.asset('images/$imageresult'),

        ],
      ),
    );
  }//build
  //-------------
  calcFuntion(){
    if(heightContriller.text.trim().isEmpty||weightContriller.text.trim().isEmpty){
      //

    }else{
      CalcBmi calcBmi =CalcBmi(weightContriller.text.trim(), heightContriller.text.trim());
      (String ,String,String)resultClac=calcBmi.calcAction();//받을때도 (타입 쓰기 )
      result='귀하에 bmi 지수는 ${resultClac.$1} dlrh\n${resultClac.$2}입니다';
      imageresult =resultClac.$3;
        

    }
      setState(() {
      });

  }
}//class