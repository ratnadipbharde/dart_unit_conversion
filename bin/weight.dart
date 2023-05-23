import 'dart:io';

class Weight {
  gmToKg(double gm) => (gm * 0.001);

  gmToPound(double gm) => (gm * 0.00220462262);

  kgToGm(double kg) => (kg * 1000);

  kgToPound(double kg) => (kg * 2.20462262);

  poundToGm(double p) => (p * 453.59237);

  poundToKg(double p) => (p * 0.45359237);

  double getWeightInGram() {
    print("Enter Weight in Gram :");
    return double.parse(stdin.readLineSync()!);
  }

  double getWeightInKg() {
    print("Enter Weight in Kg :");
    return double.parse(stdin.readLineSync()!);
  }

  double getWeightInPound() {
    print("Enter Weight in Pound :");
    return double.parse(stdin.readLineSync()!);
  }
}
