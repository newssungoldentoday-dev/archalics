// ============================================
// Archa-1.0 - Jobs Configuration
// Baguio City 2026
// Powered By Archa License Bot v1.0
// ============================================

#include <iostream>
#include <string>
#include <map>

namespace archa {

    const std::string VERSION = "v1.0.0";
    const std::string LICENSE = "Archa-1.0";
    const std::string SPDX = "Archa-1.0";
    const std::string BOT = "archalics-bot@v1";
    const std::string BOT_REPO = "newssungoldentoday-dev/archalics-bot@v1";
    const std::string PROJECT = "archalics";
    const std::string WEBSITE = "https://newssungoldentoday-dev.github.io/archalics/";
    const std::string AUTHOR = "Rogge Ramos";
    const std::string LOCATION = "Baguio City, Philippines";
    const std::string YEAR = "2026";

    struct Config {
        std::string name;
        std::string version;
        std::string license;
        std::string bot;
        std::string website;
        std::string author;
        std::string location;
    };

    class Jobs {
    public:
        static Config getConfig() {
            return Config{PROJECT, VERSION, LICENSE, BOT, WEBSITE, AUTHOR, LOCATION};
        }

        static std::string getLicenseInfo() {
            return LICENSE + " | Powered By Archa Bot " + VERSION + " | " + LOCATION + " " + YEAR;
        }

        static bool isArchaLicense(const std::string& lic) {
            return lic == LICENSE || lic == SPDX;
        }

        void run() {
            std::cout << getLicenseInfo() << std::endl;
        }
    };
}

int main() {
    archa::Jobs job;
    job.run();
    return 0;
}
