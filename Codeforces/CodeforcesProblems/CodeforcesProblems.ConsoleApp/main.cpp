// CodeforcesProblems.ConsoleApp.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.

#include "../CodeforcesProblems.DLL/Problems_01.h"

int main()
{
    string str;
    getline(cin, str);

    int n = stoi(str);
    vector<string> data = {};
   
    for (size_t i = 0; i < n; i++)
    {
        getline(cin, str);
        data.push_back(str);
    }
    
    Problem_1B(data);
    for (size_t i = 0; i < data.size(); i++)
    {
        cout << data[i] << endl;
    }
}

