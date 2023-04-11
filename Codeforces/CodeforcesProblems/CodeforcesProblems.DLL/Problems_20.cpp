#include "pch.h"

#include "Problems_20.h"
#include <vector>


std::vector<int> parseNumbers(std::string input, std::string delimiter = " ") {
    std::vector<int> result;
    int number = 0;

    size_t pos = 0;
    while ((pos = input.find(delimiter)) != std::string::npos) {
        number = std::stoi(input.substr(0, pos));
        result.push_back(number);
        input.erase(0, pos + delimiter.length());
    }

    number = std::stoi(input.substr(0, pos)); 
    result.push_back(number);

    return result;
}

std::string Problem_4A(std::string input) {
    std::string result;

    try
    {
        int weight = std::stoi(input);

        if (weight % 2 == 0 && weight > 2)
        {
            result = "YES";
        }
        else
        {
            result = "NO";
        }
    }
    catch (std::invalid_argument)
    {
        result = "NO";
    }
    catch (std::out_of_range)
    {
        result = "NO";
    }

    return result;
}

long long Problem_1A(std::string input) {
    long long result = 0;
    std::vector<int> args = parseNumbers(input);

    result = args[0] / args[2] + (args[0] % args[2] == 0 ? 0 : 1);
    result *= args[1] / args[2] + (args[1] % args[2] == 0 ? 0 : 1);

    return result;
}