library optimus_prime;

import 'dart:core';

extension OptimusPrimeFunctions on int{
  //Determine if the number is prime
  bool isPrime(){
    //Use my modulo approach
    if(this == 2 || this == 3){
      //2 and 3 are prime
      return true;
    }else if(this < 2){
      //Primes are positive and greater than or equal to 2
      return false;
    }else if(this % 2 == 1 && this % 3 == 1 || this % 3 == 2){
      //My Modulo approach
      return true;
    }else if(this % 2 == 0 && this % 3 == 2){
      //My Modulo approach
      return true;
    }else{
      //If previous conditions arent met it is a prime
      return false;
    }
  }

}
