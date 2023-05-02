#include "pch.h"
#include "CppUnitTest.h"

#include "../CodeforcesProblems.DLL/Problems_01.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace CodeforcesProblemsTest
{
	TEST_CLASS(CodeforcesProblemsTest)
	{
	public:
		
		TEST_METHOD(Test_Problem_4A)
		{
			Assert::AreEqual(string("YES"), Problem_4A("8"));
			Assert::AreEqual(string("NO"), Problem_4A("5"));
		}

		TEST_METHOD(Test_Problems_1B)
		{
			vector<string> data = { "R23C55", "BC23" };
			vector<string> expected = { "BC23", "R23C55" };

			Problem_1B(data);

			for (size_t i = 0; i < data.size(); i++)
			{
				Assert::AreEqual(expected[i], data[i]);
			}
		}

		TEST_METHOD(Test_Problems_1A)
		{
			Assert::AreEqual(4LL, Problem_1A("6 6 4"));
			Assert::AreEqual(1000000000000000000LL, Problem_1A("1000000000 1000000000 1"));
		}
	};
}
