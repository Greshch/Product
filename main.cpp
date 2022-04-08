#include <iostream>
#include <fstream>
#include <string>

using namespace std;
int const SIZE = 255;

enum FIELDS
{
    NAME,
    CATEGORY,
    PRICE,
    DISCOUNT,
    QUANTITY,
    MEASUREMENTS,
    SUPLIER,
    DELIVERY_DATE,
    EXPIRE_DATE
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
    string beg = "INSERT INTO Products(name, category, price, discount, quantity, measurments, supplier, date_of_delivery, expire_date) \n"
                  "VALUES(";
    string lf = "'";
    string rg = "', ";
    string en = " );";

    string query = beg;
    int cnt = 0;
    int products = 0;
    while (true)
    {
        if (getline(reader, temp))
        {
            if (temp.size())
            {

                //cout << "#cnt = " << cnt << endl;
                switch (cnt)
                {
                    case NAME:
                        query += lf + temp + rg;
                        //cout << "name = " << temp << endl;
                        break;

                    case CATEGORY:
                        //cout << "category = " << temp << endl;
                        query += lf + temp + rg;
                        break;

                    case PRICE:
                        query += lf + temp + rg;
                        //cout << "price = " << stof(temp) << endl;
                        break;

                    case DISCOUNT:
                        query += lf + temp + rg;
                        //cout << "discount = " << stof(temp) << endl;
                        break;

                    case QUANTITY:
                        query += lf + temp + rg;
                        //cout << "quantity = " << stoi(temp) << endl;
                        break;

                    case MEASUREMENTS:
                        query += lf + temp + rg;
                        //cout << "measurements = " << temp << endl;
                        break;

                    case SUPLIER:
                        query += lf + temp + rg;
                        //cout << "suplier = " << temp << endl;
                        break;

                    case DELIVERY_DATE:
                        query += " " + temp + ", ";
                        //cout << "delivery_date = " << temp << endl;
                        break;

                    case EXPIRE_DATE:
                        query += " " + temp + en;
                        //cout << "expire_date= " << temp << endl;
                        break;
                }
                //query = left + temp + midle + id_s + right;
                //cout << query  << endl;
                //writer << query << endl;
                cnt++;
            }
            else
            {
                //cout << "\t#############\n";
                //cout << query << endl;
                writer << query << endl << endl;
                query = beg;
                cnt = 0;
                products++;
            }

        }
        else
        {
            //cout << "\t#############\n";
            //cout << query << endl;
            writer << query << endl << endl;
            query = beg;
            cnt = 0;
            products++;
            break;
        }
    }
    reader.close();
    writer.close();
    cout << "products=" << products << endl;
    return 0;
}