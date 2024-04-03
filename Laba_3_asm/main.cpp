#include <iostream>

extern "C" int __stdcall ProcessArray1(int* arr, int sz);

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

	std::cout << ProcessArray1(array, 10) << std::endl;
	//system("PAUSE");
}