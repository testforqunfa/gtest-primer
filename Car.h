#include <string>

using namespace std;

class Car
{
public:
  Car(string name);
  
  string getName();
  int getMiles();
  void drive(int miles);
  void crash();

private:
  string _name;
  int _miles;
  
};
