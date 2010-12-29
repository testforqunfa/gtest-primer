#include "Car.h"
#include "add.h"

Car::Car(string name) {
  _name = name;
  _miles = 0;
}

string Car::getName() {
  return _name;
}

int Car::getMiles() {
  return _miles;
}

void Car::drive(int miles) {
  if (miles >= 0)
    _miles = add(_miles, miles);
}

void Car::crash() {
  throw "a string as exception";
}
