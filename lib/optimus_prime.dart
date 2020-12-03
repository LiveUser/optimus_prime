library optimus_prime;

import 'dart:core';
import 'dart:math';

extension OptimusPrimeExtensions on int{
  //Determine if the number is prime
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
      while(canBeDivided == false && i < maxIterations){
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
  //TODO: Add the coprimeWith function
}
//Library functionality
class OptimusPrime{
  static //Find primes between a range and return the list of primes
  List<int> primesInRange({int from,int to}){
    List<int> primeNumbers = [];
    for(int iterator = from; iterator <= to; iterator++){
      if(iterator.isPrime()){
        primeNumbers.add(iterator);
      }
    }
    return primeNumbers;
  }
  //Find the first prime there is after the number
  static primeAfter(int number){
    number++;
    while(number.isPrime() == false){
      number++;
    }
    return number;
  }
  //Find the first prime there is before the number
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
