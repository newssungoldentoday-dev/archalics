package packages

// ============================================
// Archa-1.0 - Packages
// Baguio City 2026
// Powered By Archa License Bot v1.0
// Website: https://newssungoldentoday-dev.github.io/archalics/
// ============================================

import "fmt"

const (
    LicenseName = "Archa-1.0"
    Version     = "v1.0.0"
    Project     = "archalics"
    Author      = "Rogge Ramos"
    Location    = "Baguio City 2026"
    Bot         = "archalics-bot@v1"
    Website     = "https://newssungoldentoday-dev.github.io/archalics/"
)

// All packages used in archalics
type PackageInfo struct {
    Name    string
    Version string
    License string
    Purpose string
}

func GetPackages() []PackageInfo {
    return []PackageInfo{
        {
            Name:    "LICENSE-COLOR",
            Version: Version,
            License: LicenseName,
            Purpose: "Color system for license display",
        },
        {
            Name:    "Config",
            Version: Version,
            License: LicenseName,
            Purpose: "Configuration for Archa-1.0",
        },
        {
            Name:    "Settings",
            Version: Version,
            License: LicenseName,
            Purpose: "Settings for Go, C, C++, Ruby",
        },
        {
            Name:    "License-Code",
            Version: Version,
            License: LicenseName,
            Purpose: "Main license validation",
        },
    }
}

func ListPackages() {
    fmt.Println("============================================")
    fmt.Println(" " + Project + " - Packages - " + LicenseName)
    fmt.Println(" Version: " + Version)
    fmt.Println(" Baguio 2026 - Powered By " + Bot)
    fmt.Println("============================================")
    for _, pkg := range GetPackages() {
        fmt.Printf(" - %s [%s] : %s\n", pkg.Name, pkg.Version, pkg.Purpose)
    }
    fmt.Println("============================================")
}

func GetInfo() string {
    return LicenseName + " | " + Project + " " + Version + " | " + Location
}
