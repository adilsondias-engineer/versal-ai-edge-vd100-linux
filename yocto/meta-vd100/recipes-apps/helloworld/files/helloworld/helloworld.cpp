#include <string>
#include <stdio.h>
#include <iostream>
#include <ctime>
#include <gpiod.hpp>
#include <filesystem>
#include <cstdlib>
#include <fstream>

using namespace std;

const ::std::filesystem::path chip_path("/dev/gpiochip0");
const ::gpiod::line::offset line_offset = 25;
const std::filesystem::path STATE_FILE = "/var/run/led25.state"; //persist state

int main()
{

   cout << "Hello World!" << endl;
   cout << "Welcome to my little FPGA world - Adilson Dias 2026 " << endl;
   cout << "\n**********My own VD100 custom build!!!!!!!! " << endl;
   time_t timestamp;
   time(&timestamp);

   // Display the date and time represented by the timestamp
   cout << ctime(&timestamp);

    // Read persisted state — default inactive if no file
    bool active = false;
    if (std::filesystem::exists(STATE_FILE)) {
        std::ifstream f(STATE_FILE);
        f >> active;
    }


    ::std::cout << line_offset << " 1=" << " last known state=" << active  << ::std::endl;
    // Toggle
    active = !active;

   auto request = ::gpiod::chip(chip_path)
                          .prepare_request()
                          .set_consumer("get-line-value")
                          .add_line_settings(
                              line_offset,
                              ::gpiod::line_settings().set_direction(
                                  ::gpiod::line::direction::OUTPUT))
                          .do_request();
  ::std::cout << line_offset << " current=" << (request.get_value(line_offset) == ::gpiod::line::value::ACTIVE ? "Active" : "Inactive") << ::std::endl;

   if (active)
   {
      request.set_value(line_offset, gpiod::line::value::ACTIVE); // on
   }else{
      request.set_value(line_offset, gpiod::line::value::INACTIVE); // off
   }
   // Persist new state
    std::ofstream f(STATE_FILE);
    f << active;

   std::cout << line_offset << " 2=" << " current state=" << active  << " :" << (request.get_value(line_offset) == ::gpiod::line::value::ACTIVE ? "Active" : "Inactive") << ::std::endl;

   return 0;
}
//$CXX $CFLAGS helloworld.cpp -o helloworld $LDFLAGS -lgpiodcxx -lgpiod