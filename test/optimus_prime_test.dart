import 'package:flutter_test/flutter_test.dart';
import 'package:optimus_prime/optimus_prime.dart';

void main() {
  test('Test the isPrime method', () {
    print('2 is prime ${2.isPrime()}');
    print('6 is prime ${6.isPrime()}');
    print('568 is prime ${568.isPrime()}');
  });
  //Known prime numbers to test with
  List<int> knownPrimes = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,821,823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997];
  test('Prime range test', (){
    List<int> primeList = OptimusPrime.primesInRange(from: 1,to: 1000);
    //Compare and print the differences
    knownPrimes.forEach((prime) {
      //Remove found known primes from the list and leave only the ones that don't match the list
      int index = primeList.indexOf(prime);
      if(index != -1){
        primeList.removeAt(index);
      }
    });
    //Print to see the differences in result
    print(primeList);
  });
  test('Next prime test',(){
    print('Next prime from 28 = ${OptimusPrime.primeAfter(28)}');
  });
  test('Prime before test',(){
    print('Next prime from 3 = ${OptimusPrime.primeBefore(3)}');
  });
  test('Test the coprime function', (){
    print('22 and 21 are coprime: ${22.coprimeWith(21)}');
    print('21 and 24 are coprime: ${21.coprimeWith(24)}');
    print('21 and 21 are coprime: ${21.coprimeWith(21)}');
  });
  test("Factors of", (){
    int testInt = 21;
    int testInt2 = 22;
    List<int> factors = testInt.factors();
    print("Factors of  $testInt");
    print(factors);
    print("Factors of $testInt2");
    print(testInt2.factors());
  });
}
