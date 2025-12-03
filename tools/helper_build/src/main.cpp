#include <iostream>
#include <ui.hpp>
#include <builder.hpp>
using namespace HelperBuild;
using namespace std;

int main(){
    string root = fs::current_path();
    RunUI(root);
    return 0;
}