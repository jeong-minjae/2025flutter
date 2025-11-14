class CalcBmi {
//틀을 만들어야 화면 여러개에서 클라스기능을 다른데서 쓸수있다 간편하게 


//property 
late double doubleweight;
late double doubleheight;//? null값이 들어올수이따

//construct 
CalcBmi(String weight,String height){
//이름을 같게 하면 this 를 써야한다 
doubleweight=double.parse(weight);
doubleheight=double.parse(height)/100;//BMI계산은 M법을 사용




}//생성자는 클라스 이름이랑 똑같다

//method

calcAction(){
  String bmiString='';//BMI 분류
  String imageString='';//BMI이미지

  double bmi=double.parse((doubleweight/(doubleheight*doubleheight)).toStringAsFixed(1));//문자로 바꾸고 비교를 할수없음 그래서 다시 double.pars사용해서 실수로바꾼다 
  if (bmi<18.4){
    bmiString='저체중';
    imageString='underweight.png';

  }else if(bmi >=18.5&& bmi<=22.9){

    bmiString='정상체중';
    imageString='normar.png';
  }
  else if(bmi >=23&& bmi<=29.9){

    bmiString='과체중';
    imageString='overweight.png';
  }else{
    bmiString='고도비만';
    imageString='obese.png';
  }

return (bmi.toString(),bmiString,imageString);//리스트는 수정삭제가능 튜플은 수정삭제 불가능 함수에서주는것은 대부분 튜플 그래서 소괄호 집어넣음
}


}
