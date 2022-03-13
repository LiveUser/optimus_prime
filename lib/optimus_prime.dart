library optimus_prime;

extension OptimusPrimeExtensions on int{
  ///Determine if the number is prime
  bool isPrime(){
    if(this == 2 || this == 3){
      //2 and 3 are prime
      return true;
    }else if(this < 2){
      //Primes are positive integers greater than or equal to 2
      return false;
    }else if(this == 4){
      //Have this condition for 4 because using int maxIterations = (this / 4).ceil(); makes 4 look like its prime and int maxIterations = (this / 2).ceil(); makes creates more iteration than necessary on number greater than 4
      return false;
    }else{
      int maxIterations = (this / 4).ceil();
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
    List<int> myFactors = this.factors();
    List<int> numberFactors = number.factors();
    //Find common factors
    bool factorsInCommon = false;
    int iterator = 1;
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
  //Make the function find factors and call it from other parts of the code where necessary
  List<int> factors(){
    int maxIterations = this ~/ 2;
    //All numbers have 1 as a factor
    List<int> foundFactors = [1];
    for(int i = 2; i <= maxIterations; i++){
      if(this % i == 0){
        foundFactors.add(i);
      }
    }
    //Add itself as a factor
    foundFactors.add(this);
    return foundFactors;
  }
}
//Library functionality
class OptimusPrime{
  ///Get a List of prime numbers within the specified range
  static List<int> primesInRange({required int from,required int to}){
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