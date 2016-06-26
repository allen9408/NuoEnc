#include <iostream>
#include <afx.h>

using namespace std;

int main(int argc, char const *argv[])
{
	CFile nuoFile;
	CFile romFile;
	CFile headFile;
	CString nuoFilename = "D:\\Code\\NuoEnc\\code\\1.nuo";
	CString romFilename = "D:\\Code\\NuoEnc\\code\\1.rom";
	CString headFilename = "D:\\Code\\NuoEnc\\code\\head.rom";
	CString pBuffer;


	if (!(nuoFile.Open(nuoFilename, CFile::modeRead, NULL))) {
		cout << "Open nuo file failed!" << endl;
		system("pause");
		return -1;
	}
	if (!(headFile.Open(headFilename, CFile::modeRead, NULL))) {
		cout << "Open head file failed!" << endl;
		system("pause");
		return -1;
	}
	if (!(romFile.Open(romFilename, CFile::modeWrite|CFile::modeCreate, NULL))) {
		cout << "Open rom file failed!" << endl;
		system("pause");
		return -1;
	}

	char *head = new char [headFile.GetLength()];
	headFile.Read(head, headFile.GetLength());
	char *buffer = new char [nuoFile.GetLength()];
	nuoFile.Read(buffer, nuoFile.GetLength());
	
	romFile.Write(head,headFile.GetLength());
	romFile.Write(buffer, nuoFile.GetLength());
	system("pause");
	return 0;
}