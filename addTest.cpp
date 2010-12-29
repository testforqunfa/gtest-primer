#include "add.h"
#include <gtest/gtest.h>

TEST(AddTest, Sum) {
  EXPECT_EQ(1, add(0, 1));
  EXPECT_EQ(3, add(1, 2));
}