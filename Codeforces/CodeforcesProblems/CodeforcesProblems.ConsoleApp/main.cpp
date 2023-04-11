// CodeforcesProblems.ConsoleApp.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include "../CodeforcesProblems.DLL/Problems_20.h"

int main()
{
    std::string input;
    std::getline(std::cin, input);

    std::cout << Problem_1A(input) << std::endl;
}

