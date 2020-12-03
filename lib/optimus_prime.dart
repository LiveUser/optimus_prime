library optimus_prime;

import 'dart:core';

extension OptimusPrimeExtensions on int{
  ///Determine if the number is prime
  bool isPrime(){
    if(this == 2 || this == 3){
      //2 and 3 are prime
      return true;
    }else if(this < 2){
      //Primes are positive integers greater than or equal to 2
      return false;
    }else{
      int maxIterations = (this/2).floor();
      bool canBeDivided = false;
      int i = 2;
      while(canBeDivided == false && i <= maxIterations){
        if(this % i == 0){
          canBeDivided = true;
        }
        i++;
      }
      if(canBeDivided){
        //Prime numbers shouldn't be divisible
        return false;
      }else{
        //If cannot be divided it is prime
        return true;
      }
    }
  }
  ///Check if this number is coprime with the argument number
  bool coprimeWith(int number){
    List<int> myFactors = [];
    List<int> numberFactors = [];
    int myMaxIterations = (this/2).floor();
    int numberMaxIterations = (number/2).floor();
    //Find factors for this number(myNumber)
    for(int i = 2; i <= myMaxIterations; i++){
      if(this % i == 0){
        myFactors.add(i);
      }
    }
    //Add itself as factor
    myFactors.add(this);
    //Find factors for the parameter number(Number)
    for(int f = 2; f <= numberMaxIterations; f++){
      if(number % f == 0){
        numberFactors.add(f);
      }
    }
    //Add itself as factor
    numberFactors.add(number);
    //Find common factors
    bool factorsInCommon = false;
    int iterator = 0;
    while(iterator < myFactors.length && factorsInCommon == false){
      if(numberFactors.indexOf(myFactors[iterator]) != -1){
        //Found a common factor it is not coprime
        factorsInCommon = true;
      }
      iterator++;
    }
    //Number is prime if it does not have common factors
    return !factorsInCommon;
  }
}
//Library functionality
class OptimusPrime{
  ///Get a List of prime numbers within the specified range
  static List<int> primesInRange({int from,int to}){
    List<int> primeNumbers = [];
    for(int iterator = from; iterator <= to; iterator++){
      if(iterator.isPrime()){
        primeNumbers.add(iterator);
      }
    }
    return primeNumbers;
  }
  ///Find the first prime there is after the number
  static primeAfter(int number){
    number++;
    while(number.isPrime() == false){
      number++;
    }
    return number;
  }
  ///Find the first prime there is before the number
  static primeBefore(int number){
    if((number - 1) <= 2){
      number = 2;
    }else{
      number--;
    }
    while(number.isPrime() == false && number > 2){
      number--;
    }
    return number;
  }
}
