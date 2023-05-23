import 'dart:io';

class Length {
  mmToCm(double mm) => (mm / 10);

  mmToM(double mm) => (mm / 1000);

  mmToKm(double mm) => (mm / 1000000);

  mmToFt(double mm) => (mm / 304.8);

  cmToMm(double cm) => (cm * 10);

  cmToM(double cm) => (cm / 100);

  cmToKm(double cm) => (cm / 100000);

  cmToFt(double cm) => (cm * 0.0328084);

  mToMm(double m) => (m * 1000);

  mToCm(double m) => (m * 100);

  mToKm(double m) => (m * 0.001);

  mToFt(double m) => (m * 3.2808399);

  kmToMm(double k) => (k * 1000000);

  kmToCm(double k) => (k * 100000);

  kmToM(double k) => (k * 1000);

  kmToFt(double k) => (k * 3280.8399);

  ftToMm(double f) => (f * 304.8);

  ftToCm(double f) => (f * 30.40);

  ftToM(double f) => (f * 0.3040);

  ftToKm(double f) => (f * 0.0003048);

  double getLengthInMm() {
    print("Enter Length in millimeter :");
    return double.parse(stdin.readLineSync()!);
  }

  double getLengthInCm() {
    print("Enter Length in centimeter :");
    return double.parse(stdin.readLineSync()!);
  }

  double getLengthInM() {
    print("Enter Length in meter :");
    return double.parse(stdin.readLineSync()!);
  }

  double getLengthInKm() {
    print("Enter Length in kilometer :");
    return double.parse(stdin.readLineSync()!);
  }

  double getLengthInFt() {
    print("Enter Length in Feet :");
    return double.parse(stdin.readLineSync()!);
  }
}
