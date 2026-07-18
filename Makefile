# ============================================
# Archa-1.0 - Makefile
# Baguio City 2026
# Powered By Archa License Bot v1.0
# Website: https://newssungoldentoday-dev.github.io/archalics/
# ============================================

PROJECT = archalics
VERSION = v1.0.0
LICENSE = Archa-1.0
AUTHOR = Rogge Ramos
LOCATION = Baguio 2026
BOT = archalics-bot@v1

GO_FILES = $(wildcard License-Code/*.go) $(wildcard Settings/*.go) $(wildcard Config/*.go)
C_FILES = $(wildcard Settings/*.c)
CPP_FILES = $(wildcard Settings/*.cpp)

# Default
all: info build

info:
	@echo "============================================"
	@echo " $(PROJECT) - $(LICENSE)"
	@echo " Version: $(VERSION)"
	@echo " Author: $(AUTHOR) - $(LOCATION)"
	@echo " Powered By: $(BOT)"
	@echo " Website: https://newssungoldentoday-dev.github.io/archalics/"
	@echo "============================================"

# Build Go
build-go:
	@echo "Building Go..."
	@go build -o bin/archalics License-Code/license-code-conf.go
	@go build -o bin/settings Settings/config.go
	@go build -o bin/config Config/config.go
	@echo "Go build done!"

# Build C
build-c:
	@echo "Building C..."
	@mkdir -p bin
	@gcc Settings/code.c -o bin/code
	@echo "C build done!"

# Build C++
build-cpp:
	@echo "Building C++..."
	@mkdir -p bin
	@g++ Settings/jobs.cpp -o bin/jobs
	@echo "C++ build done!"

build: build-go build-c build-cpp

# Run
run-go:
	@go run License-Code/license-code-conf.go

run-c:
	@./bin/code

run-cpp:
	@./bin/jobs

# Clean
clean:
	@echo "Cleaning..."
	@rm -rf bin/
	@rm -f *.out *.o *.exe
	@echo "Clean done!"

# Verify License
verify:
	@echo "Verifying $(LICENSE)..."
	@cat LICENSE
	@echo ""
	@echo "License: $(LICENSE) - OK"

# Install
install:
	@echo "Installing $(PROJECT) $(VERSION)..."
	@go mod tidy
	@echo "Install done!"

help:
	@echo "Available commands:"
	@echo "  make all       - Show info and build all"
	@echo "  make build     - Build all"
	@echo "  make build-go  - Build Go only"
	@echo "  make build-c   - Build C only"
	@echo "  make build-cpp - Build C++ only"
	@echo "  make run-go    - Run Go"
	@echo "  make clean     - Clean bin"
	@echo "  make verify    - Verify LICENSE"
	@echo "  make info      - Show project info"

.PHONY: all build build-go build-c build-cpp run-go run-c run-cpp clean verify install info help
