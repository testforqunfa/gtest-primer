#include "Car.h"
#include <gtest/gtest.h>

class CarTestFixture: public testing::Test {
public:
  Car *car;
  
  CarTestFixture() { }
  
  void SetUp() {
    car = new Car("Porsche 911 Carrera");
  }
  
  void TearDown() {
    delete car;
  }
  
  ~CarTestFixture() { }
};

TEST_F(CarTestFixture, DefaultConstructor) {
  EXPECT_EQ(0, car->getMiles());
  EXPECT_EQ("Porsche 911 Carrera", car->getName());
}

TEST_F(CarTestFixture, DriveTest) {
  EXPECT_EQ(0, car->getMiles());
  car->drive(10);
  EXPECT_EQ(10, car->getMiles());
  car->drive(20);
  EXPECT_EQ(30, car->getMiles());
  car->drive(-10);
  EXPECT_EQ(30, car->getMiles()) << "We need to ignore the reverse of the car";
}
