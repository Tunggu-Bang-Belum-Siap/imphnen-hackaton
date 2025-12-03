#include <cstdlib>
#include <string>
#include <filesystem>
using namespace std;
namespace fs = std::filesystem;

namespace HelperBuild
{
    string BuildFrontend(const string& root);
    string BuildBackend(const string& root);
    string BuildWeb(const string& root);
    string BuildMobile(const string& root);
    string BuildAllProject(const string& root);

    // helper
    string RunCmd(const string& cmd);
    bool FolderExists(const string& path);
}
