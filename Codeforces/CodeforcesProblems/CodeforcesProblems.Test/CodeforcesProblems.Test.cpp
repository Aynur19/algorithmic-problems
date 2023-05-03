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
			vector<string> data = { "R621C406", "ABD815", "R3C24", 
				"R634C162", "R695C621", "R875C898", "AHG626", "AFE664", 
				"R95C969", "R21C933", "R629C648", "R253C417", "WQ20", "AGA989", 
				"XO484", "R912C396", "R292C168", "PI999", "TR254", "PH609", 
				"R207C905", "R762C995", "LL946", "R292C805", "R174C206", "NY237", 
				"R345C125", "R657C212", "AEY185", "BB81", "HG448", "NB654", 
				"VA829", "NH784", "R2C279", "AR66", "R555C813", "R239C905", 
				"YQ299", "R664C480", "IU325", "R691C157", "R39C597", "AF614", 
				"OT619", "R861C285", "UH114", "R128C356", "EU796", "R875C881", 
				"R905C18", "WX612", "R320C311", "R230C827", "BH855", "R228C494", 
				"R537C643", "ABR841", "R338C5", "R901C910", "R23C55", "BC23",
				"R8C3", "D1", "R7C2", "R8C9", "R8C9", "R65114C109610" };

			vector<string> expected = { "OP621", "R815C732", "X3", "FF634", 
				"WW695", "AHN875", "R626C891", "R664C837", "AKG95", "AIW21", 
				"XX629", "PA253", "R20C615", "R989C859", "R484C639", "OF912", 
				"FL292", "R999C425", "R254C538", "R609C424", "AHU207", "ALG762", 
				"R946C324", "ADY292", "GX174", "R237C389", "DU345", "HD657", 
				"R185C831", "R81C54", "R448C215", "R654C366", "R829C573", 
				"R784C372", "JS2", "R66C44", "AEG555", "AHU239", "R299C667", 
				"RL664", "R325C255", "FA691", "VY39", "R614C32", "R619C410", 
				"JY861", "R114C554", "MR128", "R796C151", "AGW875", "R905", 
				"R612C622", "KY320", "AEU230", "R855C60", "RZ228", "XS537", 
				"R841C746", "E338", "AHZ901", "BC23", "R23C55", "C8", "R1C4", 
				"B7", "I8", "I8", "FFCT65114" };
				
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
