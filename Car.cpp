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
  _miles = add(_miles, miles);
}
