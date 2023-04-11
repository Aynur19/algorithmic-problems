#pragma once

#define CODEFORCES_EXPORTS

#ifdef CODEFORCES_EXPORTS
#define PROBLEMS __declspec(dllexport)
#else
#define PROBLEMS __declspec(dllimport)
#endif

#include "pch.h"

#include <iostream>
#include <string>


using namespace std;


extern PROBLEMS std::string Problem_4A(std::string input);

extern PROBLEMS long long Problem_1A(std::string input);
