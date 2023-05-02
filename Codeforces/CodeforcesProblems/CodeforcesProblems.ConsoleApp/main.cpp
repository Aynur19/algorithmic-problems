// CodeforcesProblems.ConsoleApp.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include "../CodeforcesProblems.DLL/Problems_01.h"

int main()
{
    string input;
    getline(std::cin, input);

    cout << Problem_1A(input) << endl;
}

