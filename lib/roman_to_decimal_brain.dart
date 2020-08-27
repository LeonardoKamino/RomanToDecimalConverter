class RomanToDecimalBrain {
  String romanNumber = '';
  String decimalNumber = '0';
  

  void addDigit(String newDigit){
    if(romanNumber.length < 16){
      romanNumber += newDigit;
    }
    updateNumber();
  }

  void deleteDigit(){
    if(romanNumber.length > 0){
      romanNumber = romanNumber.substring(0, romanNumber.length - 1);
      updateNumber();
    }
  }

  void reset(){
    romanNumber = '';
    decimalNumber = '0';
  }

  void updateNumber(){
    int decimal = 0;
    for(var i = 0; i < romanNumber.length; i++){
      if( digit(romanNumber[i]) < 0 ){
        decimalNumber = "Invalid";
        return;
      }

      if(romanNumber.length - i > 2){
        if (digit(romanNumber[i]) < digit(romanNumber[i+2])){
          decimalNumber = 'Invalid';
          return;
        }
      }

      if( i > 2 && romanNumber[i] == romanNumber[i - 1] && romanNumber[i] == romanNumber[i - 2] && romanNumber[i] == romanNumber[i-3]){
        decimalNumber='Invalid';
        return;
      }



      if(i == romanNumber.length - 1){
        decimal += digit(romanNumber[i]);
      }else if( digit(romanNumber[i]) >= digit(romanNumber[i + 1]) ){
        decimal += digit(romanNumber[i]);
      }else{
        decimal = decimal + digit(romanNumber[i + 1]) - digit(romanNumber[i]);
        i++;
      }
    }
    
    if(decimal < 4000){
      decimalNumber = decimal.toString();
    }else{
      decimalNumber = 'Invalid';
    }
    return;


  }


  int digit(String c){

    int value=0;

    switch(c){

         case 'I': value = 1; break;

         case 'V': value = 5; break;

         case 'X': value = 10; break;

         case 'L': value = 50; break;

         case 'C': value = 100; break;

         case 'D': value = 500; break;

         case 'M': value = 1000; break;

         case '\0': value = 0; break;

         default: value = -1; 

    }

    return value;

  }


}