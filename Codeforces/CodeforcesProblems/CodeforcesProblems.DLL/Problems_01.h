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


extern PROBLEMS string Problem_4A(string input);

extern PROBLEMS vector<string> Problem_1B(vector<string> inputs);

extern PROBLEMS long long Problem_1A(string input);
