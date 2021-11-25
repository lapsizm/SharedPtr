// Copyright 2020 Kirill Murygin murygin_280702@mail.ru

#ifndef INCLUDE_SOURCE_HPP_
#define INCLUDE_SOURCE_HPP_

#include <algorithm>
#include <atomic>
#include <iostream>
#include <memory>
#include <utility>

template <typename T>
class SharedPtr {
  T* data = nullptr;
  std::atomic_uint* counter = nullptr;

 public:
  SharedPtr() = default;

  explicit SharedPtr(T* ptr) : data(ptr) {
    if (data != nullptr) {
      counter = new std::atomic_uint(1);
    }
  }

  SharedPtr(const SharedPtr& r) : data(r.data), counter(r.counter) {
    if (data != nullptr) {
      ++(*(counter));
    }
  }

  SharedPtr(SharedPtr&& r) : data(r.data), counter(r.counter) {
    r.data = nullptr;
    r.counter = nullptr;
  }

  ~SharedPtr() {
    if (data == nullptr) {
      return;
    }
    if (*counter == 1) {
      delete data;
      delete counter;
    } else {
      --(*counter);
    }
  }

  auto operator=(const SharedPtr& r) -> SharedPtr& {
    if (this != &r) {
      this->~SharedPtr();
      data = r.data;
      counter = r.counter;
      if (data != nullptr) {
        ++(*(counter));
      }
    }
    return *this;
  }

  auto operator=(SharedPtr&& r) -> SharedPtr& {
    if (this != &r) {
      this->~SharedPtr();
      data = r.data;
      counter = r.counter;
      r.data = nullptr;
      r.counter = nullptr;
    }
    return *this;
  }

  // проверяет, указывает ли указатель на объект
  operator bool() const {
    if (data == nullptr) {
      return false;
    } else {
      return true;
    }
  }

  auto operator*() const -> T& { return *data; }

  auto operator->() const -> T* { return data; }

  auto get() const -> T* { return data; }

  void reset() {
    this->~SharedPtr();
    data = nullptr;
    counter = nullptr;
  }

  void reset(T* ptr) {
    this->~SharedPtr();
    if (ptr != nullptr) {
      data = ptr;
      counter = new std::atomic_uint(1);
    } else {
      data = nullptr;
      counter = nullptr;
    }
  }

  void swap(SharedPtr& r) {
    if (this != &r) {
      std::swap(data, r.data);
      std::swap(counter, r.counter);
    }
  }

  // возвращает количество объектов SharedPtr, которые ссылаются на тот же
  // управляемый объект
  auto use_count() const -> size_t {
    if (counter == nullptr) {
      return 0;
    }
    return *counter;
  }
};

#endif  // INCLUDE_SOURCE_HPP_
