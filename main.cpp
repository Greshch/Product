#include <iostream>
#include <fstream>
#include <string>

using namespace std;
int const SIZE = 255;

enum FIELDS
{
    NAME
};

int main(int argc, char** argv)
{
    if (argc < 3)
    {
        cerr << "#ERROR input....\n";
        return -1;
    }
    string temp;
    string src_file = argv[1];
    ifstream reader(src_file); // открываем файл для чтения
    string dest_file = argv[2];
    ofstream writer(dest_file, ios_base::out);
    string beg = "INSERT INTO Category(name) VALUES( ";
    string lf = "'";
    string rg = "'";
    string en = " );";
    string query = beg;
    while (true)
    {
        if (getline(reader, temp))
        {
            if (temp.size())
            {
                writer << beg + lf + temp + rg + en << endl;
            }
            else
            {
                
            }

        }
        else
        {
           
            break;
        }
    }
    reader.close();
    writer.close();
    return 0;
}