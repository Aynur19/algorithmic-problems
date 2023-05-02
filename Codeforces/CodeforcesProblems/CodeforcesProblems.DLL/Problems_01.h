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
#include <vector>

using namespace std;


extern PROBLEMS string Problem_4A(const string &input);

extern PROBLEMS void Problem_1B(vector<string> &data);

extern PROBLEMS int64_t Problem_1A(const string &input);
