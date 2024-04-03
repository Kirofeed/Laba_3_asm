#include <iostream>

extern "C" int __stdcall ProcessArray1(int* arr, int sz);
extern "C" int __cdecl ProcessArray2(int* arr, int sz);
extern "C" int __stdcall ProcessArray3(int* arr, int sz);
extern "C" int __cdecl ProcessArray4(int* arr, int sz);
extern "C" int __fastcall ProcessArray5(int* arr, int sz);

int main() {
	int* array = new int[10];
	array[0] = 1;
	array[1] = 3;
	array[2] = 4;
	array[3] = 2;
	array[4] = 6;
	array[5] = 3;
	array[6] = 2;
	array[7] = 3;
	array[8] = 5;
	array[9] = 1;

	std::cout << "proc 1) __stdcall ProcessArray1: " << ProcessArray1(array, 10) << std::endl;
	std::cout << "proc 2) __cdecl ProcessArray2: " << ProcessArray2(array, 10) << std::endl;
	std::cout << "proc 3) __stdcall ProcessArray3: " << ProcessArray3(array, 10) << std::endl;
	std::cout << "proc 4) __stdcall ProcessArray4: " << ProcessArray4(array, 10) << std::endl;
	std::cout << "proc 5) __fastcall ProcessArray5: " << ProcessArray5(array, 10) << std::endl;

	//system("PAUSE");
}