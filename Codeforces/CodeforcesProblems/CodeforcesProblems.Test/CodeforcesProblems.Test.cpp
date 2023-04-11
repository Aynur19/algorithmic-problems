#include "pch.h"
#include "CppUnitTest.h"

#include "../CodeforcesProblems.DLL/Problems_20.h"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace CodeforcesProblemsTest
{
	TEST_CLASS(CodeforcesProblemsTest)
	{
	public:
		
		TEST_METHOD(Problems_20)
		{
			std::string expected("YES");

			Assert::AreEqual(expected, Problem_4A("8"));
		}
	};
}
