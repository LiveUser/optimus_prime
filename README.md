# optimus_prime

A library to aid working with prime numbers.

Hecho en  🇵🇷 por Radamés J. Valentín Reyes

## Import the Library
~~~dart
import 'package:optimus_prime/optimus_prime.dart';
~~~

## Library Examples:

### Extension Methods

Check if an integer is prime:

~~~dart
2.isPrime();
~~~

Check if an integer is coprime with another

~~~dar
22.coprimeWith(21);
~~~

Find the factors of an integer

~~~dart
int testInt = 10;
List<int> factors = testInt.factors();
print("Factors of  $testInt");
print(factors);
~~~



### Optimus Prime class methods

Get the first prime integer found after the specified number

~~~dart
OptimusPrime.primeAfter(28);
~~~

Get the first prime integer found before the specified number

~~~
OptimusPrime.primeBefore(3);
~~~
Get a list of prime integers within the specified range

~~~dart
List<int> primeList = OptimusPrime.primesInRange(from: 1,to: 1000);
~~~