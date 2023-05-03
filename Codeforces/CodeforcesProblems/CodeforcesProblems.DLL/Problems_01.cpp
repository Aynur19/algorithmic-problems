#include "pch.h"

#include "Problems_01.h"


vector<int> parseNumbers(string input, string const &delimiter = " ") {
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

string Problem_4A(const string &input) {
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

void Problem_1B(vector<string> &data) {
    const string digits = "0123456789";
    const string symbols = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    size_t countS = symbols.size();
    size_t posC = string::npos;
    size_t posN = string::npos;
    bool isRC = false;

    for (size_t i = 0; i < data.size(); i++)
    {
        posN = data[i].find_first_of(digits, 1);
        posC = data[i].find('C');
        
        isRC = (posN == 0) || ((posC != string::npos) && (posC > posN));

        int64_t row = 0;
        int64_t column = 0;

        if (isRC) {
            row = stoi(data[i].substr(posN, posC - 1));
            column = stoi(data[i].substr(posC + 1));

            string columnStr = "";
            string lastColumn = "";

            int n = (column % countS);
            if (n > 0) {
                lastColumn = lastColumn + symbols[n - 1];
            }

            column -= n;

            if (column > 0) {
                do {
                    n = column % countS;
                    column /= countS;
                    
                    if (column > countS) {
                        columnStr += "A";
                    }
                    else if (n > 0) {
                        if (column > 0 && lastColumn.empty()) {
                            columnStr = columnStr + symbols[n - 2] + symbols[countS - 1];
                        }
                        else {
                            columnStr = columnStr + symbols[n - 1];
                        }
                    }
                    else {
                        if (lastColumn.empty()) {
                            columnStr = columnStr + symbols[column - 2] + symbols[countS - 1];
                        }
                        else {
                            columnStr = columnStr + symbols[column - 1];
                        }
                    }
                } while (column > countS);
            }
            columnStr += lastColumn;

            data[i] = columnStr + to_string(row);
        }
        else {
            for (int64_t j = posN - 1, k = 0; j >= 0; j--, k++)
            {
                column += (int)((1 + (int)symbols.find(data[i][j])) * pow(symbols.size(), k));
            }
            row = stoi(data[i].substr(posN));

            data[i] = "R" + to_string(row) + "C" + to_string(column);
        }
    }
}

int64_t Problem_1A(const string &input) {
    int64_t result = 0;
    vector<int> args = parseNumbers(input);

    result = args[0] / args[2] + (int64_t)(args[0] % args[2] == 0 ? 0 : 1);
    result *= args[1] / args[2] + (int64_t)(args[1] % args[2] == 0 ? 0 : 1);

    return result;
}