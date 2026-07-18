# ============================================
# Archa-1.0 - Ruby Gem Configuration
# Baguio City 2026
# Powered By Archa License Bot v1.0
# Website: https://newssungoldentoday-dev.github.io/archalics/
# ============================================

module Archa
  module Config
    VERSION = "1.0.0"
    LICENSE = "Archa-1.0"
    SPDX = "Archa-1.0"
    LICENSE_FILE = "LICENSE"

    BOT = "archalics-bot@v1"
    BOT_REPO = "newssungoldentoday-dev/archalics-bot@v1"
    BOT_AUTHOR = "newssungoldentoday-dev"

    PROJECT = "archalics"
    WEBSITE = "https://newssungoldentoday-dev.github.io/archalics/"
    AUTHOR = "Rogge Ramos"
    LOCATION = "Baguio City, Philippines"
    YEAR = "2026"

    STATUS = "Active"
    POWERED_BY = "Powered By Archa License Bot"
  end

  class License
    def self.info
      "#{Config::LICENSE} | #{Config::POWERED_BY} #{Config::VERSION} | #{Config::LOCATION} #{Config::YEAR}"
    end

    def self.verify(license_name)
      license_name == Config::LICENSE || license_name == Config::SPDX
    end

    def self.config
      {
        name: Config::PROJECT,
        version: Config::VERSION,
        license: Config::LICENSE,
        bot: Config::BOT,
        website: Config::WEBSITE
      }
    end
  end
end

puts Archa::License.info if __FILE__ == $0
