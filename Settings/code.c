// ============================================
// Archa-1.0 - C Configuration
// Baguio City 2026
// Powered By Archa License Bot v1.0
// ============================================

#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#define VERSION "v1.0.0"
#define LICENSE_NAME "Archa-1.0"
#define LICENSE_SPDX "Archa-1.0"
#define LICENSE_FILE "LICENSE"

#define BOT "archalics-bot@v1"
#define BOT_REPO "newssungoldentoday-dev/archalics-bot@v1"
#define PROJECT "archalics"
#define WEBSITE "https://newssungoldentoday-dev.github.io/archalics/"
#define AUTHOR "Rogge Ramos"
#define LOCATION "Baguio City, Philippines"
#define YEAR "2026"
#define POWERED_BY "Powered By Archa License Bot"

struct ArchaConfig {
    char name[50];
    char version[20];
    char license[20];
    char bot[50];
    char website[100];
    char author[50];
    char location[50];
};

struct ArchaConfig get_config() {
    struct ArchaConfig cfg;
    strcpy(cfg.name, PROJECT);
    strcpy(cfg.version, VERSION);
    strcpy(cfg.license, LICENSE_NAME);
    strcpy(cfg.bot, BOT);
    strcpy(cfg.website, WEBSITE);
    strcpy(cfg.author, AUTHOR);
    strcpy(cfg.location, LOCATION);
    return cfg;
}

const char* get_license_info() {
    static char info[200];
    snprintf(info, sizeof(info), "%s | %s %s | %s %s",
             LICENSE_NAME, POWERED_BY, VERSION, LOCATION, YEAR);
    return info;
}

bool is_archa_license(const char* license) {
    return strcmp(license, LICENSE_NAME) == 0 || strcmp(license, LICENSE_SPDX) == 0;
}

int main() {
    printf("%s\n", get_license_info());
    struct ArchaConfig cfg = get_config();
    printf("Project: %s\nVersion: %s\n", cfg.name, cfg.version);
    return 0;
}
