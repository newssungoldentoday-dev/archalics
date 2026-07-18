# ============================================
# Archa-1.0 - Python Color Code Configuration
# Baguio City 2026
# Powered By Archa License Bot v1.0
# Website: https://newssungoldentoday-dev.github.io/archalics/
# ============================================

LICENSE = "Archa-1.0"
SPDX = "Archa-1.0"
LICENSE_FILE = "LICENSE"

VERSION = "1.0.0"
BOT = "archalics-bot@v1"
BOT_REPO = "newssungoldentoday-dev/archalics-bot@v1"
PROJECT = "archalics"
WEBSITE = "https://newssungoldentoday-dev.github.io/archalics/"
AUTHOR = "Rogge Ramos"
LOCATION = "Baguio City, Philippines"
YEAR = "2026"
POWERED_BY = "Powered By Archa License Bot"
STATUS = "Active"

class Colors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'

class ArchaConfig:
    def __init__(self):
        self.name = PROJECT
        self.version = VERSION
        self.license = LICENSE
        self.bot = BOT
        self.website = WEBSITE
        self.author = AUTHOR
        self.location = LOCATION
        self.year = YEAR
        self.status = STATUS

    def get_info(self):
        return f"{LICENSE} | {POWERED_BY} {VERSION} | {LOCATION} {YEAR}"

    def get_dict(self):
        return {
            "name": self.name,
            "version": self.version,
            "license": self.license,
            "bot": self.bot,
            "website": self.website,
            "author": self.author,
            "location": self.location
        }

    def is_archa_license(self, lic: str) -> bool:
        return lic == LICENSE or lic == SPDX

    def print_colored(self):
        print(f"{Colors.OKGREEN}{Colors.BOLD}{self.get_info()}{Colors.ENDC}")
        print(f"{Colors.OKBLUE}Project: {self.name} | Author: {self.author}{Colors.ENDC}")

if __name__ == "__main__":
    config = ArchaConfig()
    config.print_colored()
