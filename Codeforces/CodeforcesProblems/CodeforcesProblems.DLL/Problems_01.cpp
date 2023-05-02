#include "pch.h"

#include "Problems_01.h"
#include <vector>


vector<int> parseNumbers(string input, string delimiter = " ") {
    vector<int> result;
    int number = 0;

    size_t pos = 0;
    while ((pos = input.find(delimiter)) != string::npos) {
        number = stoi(input.substr(0, pos));
        result.push_back(number);
        input.erase(0, pos + delimiter.length());
    }

    number = stoi(input.substr(0, pos)); 
    result.push_back(number);

    return result;
}

string Problem_4A(string input) {
    string result;

    try
    {
        int weight = stoi(input);

        if (weight % 2 == 0 && weight > 2)
        {
            result = "YES";
        }
        else
        {
            result = "NO";
        }
    }
    catch (invalid_argument)
    {
        result = "NO";
    }
    catch (out_of_range)
    {
        result = "NO";
    }

    return result;
}

long long Problem_1A(string input) {
    long long result = 0;
    vector<int> args = parseNumbers(input);

    result = args[0] / args[2] + (args[0] % args[2] == 0 ? 0 : 1);
    result *= args[1] / args[2] + (args[1] % args[2] == 0 ? 0 : 1);

    return result;
}