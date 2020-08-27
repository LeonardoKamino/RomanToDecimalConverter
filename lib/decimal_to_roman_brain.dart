
class DecimalToRomanBrain{
  String roman = '';
  int decimal = 0;

  void addDigit(int newDigit){
    if(decimal.toString().length < 15){
      decimal = decimal * 10 + newDigit;
    }
    
    calculateRoman();
  }

  void deleteDigit(){
    decimal = decimal ~/ 10;
    calculateRoman();
  }

  void reset(){
    decimal = 0;
    roman = '';
  }

  void calculateRoman(){
    print('new');
    if(decimal > 3999){
      roman = 'Invalid';
      return;
    }

    int div = 1;
    int dec = decimal;
    while(dec >=  div ){
      div*=10;
    }

    div ~/= 10;

    String result = '';
    
    while(div > 0){
      
      //extract first digit of current dec
      int firstDig = dec ~/ div;
      print('$dec $div $firstDig $result');

      if(firstDig <= 3 ){
        result += romanNumeral[div] * firstDig;
      }

      else if (firstDig == 4){
        result += romanNumeral[div] + romanNumeral[div * 5]; 
      }

      else if (firstDig <= 8){
        result += romanNumeral[div * 5] + (romanNumeral[div] * (firstDig - 5 ) );
      }
      else if(firstDig == 9 ){
        result += romanNumeral[div] + romanNumeral[div * 10];
      }
      
      
      dec =  dec % div;
      div ~/= 10;
    }
    
    roman = result;

  }

  var romanNumeral = {
    1 : 'I',
    5 : 'V',
    10: 'X',
    50: 'L',
    100: 'C',
    500: 'D',
    1000: 'M',
  }; 

}