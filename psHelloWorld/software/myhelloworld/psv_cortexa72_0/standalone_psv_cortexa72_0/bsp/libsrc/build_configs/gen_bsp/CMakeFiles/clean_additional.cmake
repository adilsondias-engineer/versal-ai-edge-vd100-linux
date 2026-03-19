# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "J:\\work\\projects\\versal\\psHelloWorld\\software\\myhelloworld\\psv_cortexa72_0\\standalone_psv_cortexa72_0\\bsp\\include\\sleep.h"
  "J:\\work\\projects\\versal\\psHelloWorld\\software\\myhelloworld\\psv_cortexa72_0\\standalone_psv_cortexa72_0\\bsp\\include\\xiltimer.h"
  "J:\\work\\projects\\versal\\psHelloWorld\\software\\myhelloworld\\psv_cortexa72_0\\standalone_psv_cortexa72_0\\bsp\\include\\xtimer_config.h"
  "J:\\work\\projects\\versal\\psHelloWorld\\software\\myhelloworld\\psv_cortexa72_0\\standalone_psv_cortexa72_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
