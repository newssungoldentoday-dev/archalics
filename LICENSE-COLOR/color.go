package color

// ============================================
// Archa-1.0 - LICENSE-COLOR / Color System
// Baguio City 2026
// Powered By Archa License Bot v1.0
// Website: https://newssungoldentoday-dev.github.io/archalics/
// ============================================

import "fmt"

const (
    // License Info
    LicenseName = "Archa-1.0"
    Version     = "v1.0.0"
    Project     = "archalics"
    Author      = "Rogge Ramos"
    Location    = "Baguio City 2026"
    Bot         = "archalics-bot@v1"

    // Colors - For LICENSE display
    Reset   = "\033[0m"
    Red     = "\033[31m"
    Green   = "\033[32m"
    Yellow  = "\033[33m"
    Blue    = "\033[34m"
    Magenta = "\033[35m"
    Cyan    = "\033[36m"
    White   = "\033[37m"
    Bold    = "\033[1m"

    // License Colors
    LicenseColor = Green
    ProjectColor = Cyan
    VersionColor = Yellow
    AuthorColor  = Magenta
)

// Colorize LICENSE output
func PrintLicense() {
    fmt.Println(Bold + LicenseColor + "============================================" + Reset)
    fmt.Println(Bold + ProjectColor + " " + Project + " - " + LicenseName + Reset)
    fmt.Println(Bold + VersionColor + " Version: " + Version + Reset)
    fmt.Println(Bold + AuthorColor + " Author: " + Author + " - " + Location + Reset)
    fmt.Println(Bold + Green + " Powered By: " + Bot + Reset)
    fmt.Println(Bold + Blue + " Website: https://newssungoldentoday-dev.github.io/archalics/" + Reset)
    fmt.Println(Bold + LicenseColor + "============================================" + Reset)
    fmt.Println(Green + "License: " + LicenseName + " - Active" + Reset)
}

func GetColorInfo() string {
    return LicenseName + " | " + Project + " " + Version + " | " + Location
}

func Colorize(text string, color string) string {
    return color + text + Reset
}

func Success(text string) string {
    return Green + Bold + text + Reset
}

func Error(text string) string {
    return Red + Bold + text + Reset
}

func Warning(text string) string {
    return Yellow + Bold + text + Reset
}

func Info(text string) string {
    return Cyan + text + Reset
}
