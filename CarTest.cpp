#include "Car.h"
#include <gtest/gtest.h>

TEST(CarTest, DefaultConstructor) {
  Car car("Porsche 911 Carrera");
  EXPECT_EQ(0, car.getMiles());
  EXPECT_EQ("Porsche 911 Carrera", car.getName());
}

TEST(CarTest, DriveTest) {
  Car car("Porsche 911 Carrera");
  EXPECT_EQ(0, car.getMiles());
  car.drive(10);
  EXPECT_EQ(10, car.getMiles());
  car.drive(20);
  EXPECT_EQ(30, car.getMiles());
}
