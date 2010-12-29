#include "Car.h"
#include <gtest/gtest.h>

TEST(CarTest, DefaultConstructor) {
  Car car("Porsche 911 Carrera");
  EXPECT_EQ(0, car.getMiles());
  EXPECT_EQ("Porsche 911 Carrera", car.getName());
}