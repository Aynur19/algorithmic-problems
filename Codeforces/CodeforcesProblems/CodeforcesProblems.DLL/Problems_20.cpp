#include "pch.h"

#include "Problems_20.h"

 

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