// Copyright 2020 Kirill Murygin murygin_280702@mail.ru

#include <gtest/gtest.h>

#include "source.hpp"

TEST(Example, EmptyTest) { EXPECT_TRUE(true); }

TEST(SharedPtr, Construct) {
  SharedPtr<int> sh;
  EXPECT_EQ(sh.get(), nullptr);
  EXPECT_EQ(sh.use_count(), 0);

  int* p = new int(10);
  SharedPtr<int> sh1(p);
  EXPECT_EQ(sh1.get(), p);
  EXPECT_EQ(sh1.use_count(), 1);
  EXPECT_EQ(*sh1, 10);

  SharedPtr<int> sh2(sh1);
  EXPECT_EQ(sh2.get(), p);
  EXPECT_EQ(sh2.use_count(), 2);
  EXPECT_EQ(sh1.use_count(), 2);

  SharedPtr<int> sh3(std::move(sh2));
  EXPECT_EQ(sh2.get(), nullptr);
  EXPECT_EQ(sh2.use_count(), 0);
  EXPECT_EQ(sh3.get(), p);
  EXPECT_EQ(sh3.use_count(), 2);
  EXPECT_EQ(sh1.use_count(), 2);
}

TEST(SharedPtr, Operators) {
  double* num = new double(3.14);
  double* num2 = new double(5.2);

  SharedPtr<double> sh1(num);
  SharedPtr<double> sh2(num2);

  sh2 = sh1;
  EXPECT_EQ(sh1.get(), num);
  EXPECT_EQ(sh2.get(), num);
  EXPECT_EQ(sh1.use_count(), 2);
  EXPECT_EQ(sh2.use_count(), 2);

  sh2 = std::move(sh1);
  EXPECT_EQ(sh1.get(), nullptr);
  EXPECT_EQ(sh2.get(), num);
  EXPECT_EQ(sh1.use_count(), 0);
  EXPECT_EQ(sh2.use_count(), 1);

  EXPECT_EQ(*sh2, 3.14);
  EXPECT_EQ(sh2.operator->(), num);
}

TEST(SharedPtr, Methods) {
  SharedPtr<char> sh1;
  EXPECT_EQ(bool(sh1), false);

  char* b = new char('b');
  SharedPtr<char> sh2(b);
  EXPECT_EQ(sh2.get(), b);
  EXPECT_EQ(sh2.use_count(), 1);
  EXPECT_EQ(bool(sh2), true);

  sh2.reset();
  EXPECT_EQ(sh2.get(), nullptr);
  EXPECT_EQ(sh2.use_count(), 0);

  char* b_2 = new char('B');
  SharedPtr<char> sh3;
  sh3.reset(b_2);
  EXPECT_EQ(sh3.get(), b_2);
  EXPECT_EQ(sh3.use_count(), 1);

  sh3.swap(sh2);
  EXPECT_EQ(sh3.get(), nullptr);
  EXPECT_EQ(sh3.use_count(), 0);
  EXPECT_EQ(sh2.get(), b_2);
  EXPECT_EQ(sh2.use_count(), 1);
}
