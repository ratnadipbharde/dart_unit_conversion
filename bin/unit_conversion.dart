import 'dart:io';
import 'length.dart';
import 'tempreture.dart';
import 'constants.dart';
import 'weight.dart';

void main(List<String> arguments) {
  do {
    print("Unit Conversion...");
    print("0. Exit.\n"
        "1. Temperature.\n"
        "2. Length.\n"
        "3. Weight.\n");
    print("Enter Your Choice : ");
    dynamic choice = int.parse(stdin.readLineSync()!);
    if (choice == 0) {
      choice = Constant.EXIT;
    }
    if (choice == 1) {
      choice = Constant.TEMPERETURE;
    }
    if (choice == 2) {
      choice = Constant.LENGTH;
    }
    if (choice == 3) {
      choice = Constant.WEIGHT;
    }
    switch (choice) {
      case Constant.TEMPERETURE:
        runTempreture();
        break;
      case Constant.LENGTH:
        runLength();
        break;
      case Constant.WEIGHT:
        runWeight();
        break;
      case Constant.EXIT:
        return;
    }
  } while (true);
}

void runWeight() {
  do {
    print("Convert Weight...");
    print("0. Return to Main Page.\n"
        "1. Gram to kilogram .\n"
        "2. Gram to pound.\n"
        "3. kilogram to Gram.\n"
        "4. kilogram to pound. .\n"
        "5. pound to gram.\n"
        "6. pound to kilogram.\n");
    print("Enter Your Choice : ");
    dynamic choice = int.parse(stdin.readLineSync()!);
    if (choice == 0) {
      choice = Constant.RETURN;
    }
    if (choice == 1) {
      choice = WeightConstant.GRAM_TO_KG;
    }
    if (choice == 2) {
      choice = WeightConstant.GRAM_TO_POUND;
    }
    if (choice == 3) {
      choice = WeightConstant.KG_TO_GRAM;
    }
    if (choice == 4) {
      choice = WeightConstant.KG_TO_POUND;
    }
    if (choice == 5) {
      choice = WeightConstant.POUND_TO_GRAM;
    }
    if (choice == 6) {
      choice = WeightConstant.POUND_TO_KG;
    }
    Weight weight = Weight();
    switch (choice) {
      case WeightConstant.GRAM_TO_KG:
        print("Gram :${weight.gmToKg(weight.getWeightInGram())}");
        break;
      case WeightConstant.GRAM_TO_POUND:
        print("Gram :${weight.gmToPound(weight.getWeightInGram())}");
        break;
      case WeightConstant.KG_TO_GRAM:
        print("Gram :${weight.kgToGm(weight.getWeightInKg())}");
        break;
      case WeightConstant.KG_TO_POUND:
        print("Gram :${weight.kgToPound(weight.getWeightInKg())}");
        break;
      case WeightConstant.POUND_TO_GRAM:
        print("Gram :${weight.poundToGm(weight.getWeightInPound())}");
        break;
      case WeightConstant.POUND_TO_KG:
        print("Gram :${weight.poundToKg(weight.getWeightInPound())}");
        break;
      case Constant.RETURN:
        return;
      default:
        print("invalid choice...");
    }
  } while (true);
}

void runLength() {
  do {
    print("Convert Length...");
    print("=====================================");
    print("0. Return to Main Page.\n"
        "-------------millimeter-------------\n"
        "1. millimeter to centimeters.\n"
        "2. millimeter to meter .\n"
        "3. millimeter to kilometer.\n"
        "4. millimeter to Feet.\n"
        "-------------centimeter-------------\n"
        "5. centimeter to millimeter.\n"
        "6. centimeter to meter.\n"
        "7. centimeter to kilometer.\n"
        "8. centimeter to Feet.\n"
        "-------------meter-------------\n"
        "9. meter to millimeter.\n"
        "10. meter to centimeter.\n"
        "11. meter to kilometer.\n"
        "12. meter to Feet.\n"
        "-------------kilometer-------------\n"
        "13. kilometer to millimeter.\n"
        "14. kilometer to centimeter.\n"
        "15. kilometer to meter.\n"
        "16. kilometer to Feet.\n"
        "-------------feet-------------\n"
        "17. feet to millimeter.\n"
        "18. feet to centimeter.\n"
        "19. feet to meter.\n"
        "20. feet to kilometer.\n");
    print("=====================================");
    print("Enter Your Choice : ");
    dynamic choice = int.parse(stdin.readLineSync()!);
    if (choice == 0) {
      choice = Constant.RETURN;
    }
    if (choice == 1) {
      choice = LengthConstant.MM_TO_CM;
    }
    if (choice == 2) {
      choice = LengthConstant.MM_TO_M;
    }
    if (choice == 3) {
      choice = LengthConstant.MM_TO_KM;
    }
    if (choice == 4) {
      choice = LengthConstant.MM_TO_FT;
    }
    if (choice == 5) {
      choice = LengthConstant.CM_TO_MM;
    }
    if (choice == 6) {
      choice = LengthConstant.CM_TO_M;
    }
    if (choice == 7) {
      choice = LengthConstant.CM_TO_KM;
    }
    if (choice == 8) {
      choice = LengthConstant.CM_TO_FEET;
    }
    if (choice == 9) {
      choice = LengthConstant.M_TO_MM;
    }
    if (choice == 10) {
      choice = LengthConstant.M_TO_CM;
    }
    if (choice == 11) {
      choice = LengthConstant.M_TO_KM;
    }
    if (choice == 12) {
      choice = LengthConstant.M_TO_FEET;
    }
    if (choice == 13) {
      choice = LengthConstant.KM_TO_MM;
    }
    if (choice == 14) {
      choice = LengthConstant.KM_TO_CM;
    }
    if (choice == 15) {
      choice = LengthConstant.KM_TO_M;
    }
    if (choice == 16) {
      choice = LengthConstant.KM_TO_FEET;
    }

    if (choice == 17) {
      choice = LengthConstant.FT_TO_MM;
    }
    if (choice == 18) {
      choice = LengthConstant.FT_TO_CM;
    }
    if (choice == 19) {
      choice = LengthConstant.FT_TO_M;
    }
    if (choice == 20) {
      choice = LengthConstant.FT_TO_KM;
    }
    Length length = Length();
    switch (choice) {
      case LengthConstant.MM_TO_CM:
        print("centimeter :${length.mmToCm(length.getLengthInMm())}");
        break;
      case LengthConstant.MM_TO_M:
        print("meter :${length.mmToM(length.getLengthInMm())}");
        break;
      case LengthConstant.MM_TO_KM:
        print("kilometer :${length.mmToKm(length.getLengthInMm())}");
        break;
      case LengthConstant.MM_TO_FT:
        print("Feet :${length.mmToFt(length.getLengthInMm())}");
        break;
      case LengthConstant.CM_TO_MM:
        print("millimeter :${length.cmToMm(length.getLengthInCm())}");
        break;
      case LengthConstant.CM_TO_M:
        print("meter :${length.cmToM(length.getLengthInCm())}");
        break;
      case LengthConstant.CM_TO_KM:
        print("kilometer :${length.cmToKm(length.getLengthInCm())}");
        break;
      case LengthConstant.CM_TO_FEET:
        print("Feet :${length.cmToFt(length.getLengthInCm())}");
        break;
      case LengthConstant.M_TO_MM:
        print("millimeter :${length.mToMm(length.getLengthInM())}");
        break;
      case LengthConstant.M_TO_CM:
        print("centimeter :${length.mToCm(length.getLengthInM())}");
        break;
      case LengthConstant.M_TO_KM:
        print("kilometer :${length.mToKm(length.getLengthInM())}");
        break;
      case LengthConstant.M_TO_FEET:
        print("Feet :${length.mToFt(length.getLengthInM())}");
        break;
      case LengthConstant.KM_TO_MM:
        print("Feet :${length.kmToMm(length.getLengthInKm())}");
        break;
      case LengthConstant.KM_TO_CM:
        print("Feet :${length.kmToCm(length.getLengthInKm())}");
        break;
      case LengthConstant.KM_TO_M:
        print("Feet :${length.kmToM(length.getLengthInKm())}");
        break;
      case LengthConstant.KM_TO_FEET:
        print("Feet :${length.kmToFt(length.getLengthInKm())}");
        break;
      case LengthConstant.FT_TO_MM:
        print("Feet :${length.ftToMm(length.getLengthInFt())}");
        break;
      case LengthConstant.FT_TO_CM:
        print("Feet :${length.ftToCm(length.getLengthInFt())}");
        break;
      case LengthConstant.FT_TO_M:
        print("Feet :${length.ftToM(length.getLengthInFt())}");
        break;
      case LengthConstant.FT_TO_KM:
        print("Feet :${length.ftToKm(length.getLengthInFt())}");
        break;
      case Constant.RETURN:
        return;
      default:
        print("invalid choice...");
    }
  } while (true);
}

runTempreture() {
  do {
    print("Convert Tempreture...");
    print("0. Return to Main Page.\n"
        "1. Celcius to Farenheit.\n"
        "2. Farenheit to Celcius.\n");
    print("Enter Your Choice : ");
    dynamic choice = int.parse(stdin.readLineSync()!);
    if (choice == 0) {
      choice = Constant.RETURN;
    }
    if (choice == 1) {
      choice = TempterureConstant.CELCIUS_TO_FARENHEIT;
    }
    if (choice == 2) {
      choice = TempterureConstant.FARENHEIT_TO_CELCIUS;
    }
    Tempereture tempereture = Tempereture();
    switch (choice) {
      case TempterureConstant.CELCIUS_TO_FARENHEIT:
        print("Enter Temperature in Degree Celcius :");
        double celcius = double.parse(stdin.readLineSync()!);
        print(
            "Temperature in Fahrenheit is :${tempereture.celciusToFarenheit(celcius)}");
        break;
      case TempterureConstant.FARENHEIT_TO_CELCIUS:
        print("Enter Temperature in Fahrenheit :");
        double fahrenheit = double.parse(stdin.readLineSync()!);
        print(
            "Temperature in Degree Celcius is :${tempereture.farenheitToCelcius(fahrenheit)}");
        break;
      case Constant.RETURN:
        return;
      default:
        print("invalid choice...");
    }
  } while (true);
}
