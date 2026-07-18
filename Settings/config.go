package archa

// ============================================
// Archa-1.0 - Main Configuration
// Baguio City 2026
// Powered By Archa License Bot v1.0
// Website: https://newssungoldentoday-dev.github.io/archalics/
// ============================================

const (
    // License Info
    Version     = "v1.0.0"
    LicenseName = "Archa-1.0"
    LicenseSPDX = "Archa-1.0"
    LicenseFile = "LICENSE"
    
    // Bot Info
    Bot         = "archalics-bot@v1"
    BotRepo     = "newssungoldentoday-dev/archalics-bot@v1"
    BotAuthor   = "newssungoldentoday-dev"
    
    // Project Info
    ProjectName = "archalics"
    Website     = "https://newssungoldentoday-dev.github.io/archalics/"
    Author      = "Rogge Ramos"
    Location    = "Baguio City, Philippines"
    Year        = "2026"
    
    // Status
    Status      = "Active"
    PoweredBy   = "Powered By Archa License Bot"
)

// Config struct for advanced usage
type Config struct {
    Name    string
    Version string
    License string
    Bot     string
    Website string
}

// GetConfig returns full config
func GetConfig() Config {
    return Config{
        Name:    ProjectName,
        Version: Version,
        License: LicenseName,
        Bot:     Bot,
        Website: Website,
    }
}

// GetLicenseInfo returns license info string
func GetLicenseInfo() string {
    return LicenseName + " | " + PoweredBy + " " + Version + " | " + Location + " " + Year
}

// IsArchaLicense checks if license is Archa
func IsArchaLicense(license string) bool {
    return license == LicenseName || license == LicenseSPDX
}
