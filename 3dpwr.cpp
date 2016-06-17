#include <iostream>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "GPIOClass.h"

using namespace std;

int main (int argc, char *argv[])
{

  GPIOClass* gpio22 = new GPIOClass("22"); //create new GPIO object to be attached to  GPIO4

  gpio22->export_gpio();
  gpio22->setdir_gpio("out");

  if (argc == 1)
  {
    cout << "usage: gpio <on|off>" << endl;
  }
  else
  {
    if (strcmp(argv[1], "on") == 0)
      gpio22->setval_gpio("1");
    else if (strcmp(argv[1], "off") == 0)
      gpio22->setval_gpio("0");
  }

  return 0;
}

