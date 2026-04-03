#!/usr/bin/env bash
# ============================================================================
# neiki - Installer
# ============================================================================

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="neiki"

echo -e "${CYAN}${BOLD}"
echo "  ███╗   ██╗███████╗██╗██╗  ██╗██╗"
echo "  ████╗  ██║██╔════╝██║██║ ██╔╝██║"
echo "  ██╔██╗ ██║█████╗  ██║█████╔╝ ██║"
echo "  ██║╚██╗██║██╔══╝  ██║██╔═██╗ ██║"
echo "  ██║ ╚████║███████╗██║██║  ██╗██║"
echo "  ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═╝╚═╝"
echo -e "${NC}"
echo -e "  ${BOLD}Installer${NC}"
echo ""

# Check root
if [[ $EUID -ne 0 ]]; then
  echo -e "${RED}Error: Please run as root (sudo ./install.sh)${NC}"
  exit 1
fi

# Check OS compatibility
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
  if [[ "$ID" != "ubuntu" && "$ID" != "debian" && "$ID_LIKE" != *"debian"* && "$ID_LIKE" != *"ubuntu"* ]]; then
    echo -e "${RED}Warning: This tool is designed for Debian/Ubuntu systems.${NC}"
    echo -e "Detected: $PRETTY_NAME"
    read -rp "Continue anyway? [y/N] " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
      exit 1
    fi
  fi
fi

# Install
echo -e "${GREEN}Installing neiki to ${INSTALL_DIR}/${SCRIPT_NAME}...${NC}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cp "${SCRIPT_DIR}/${SCRIPT_NAME}" "${INSTALL_DIR}/${SCRIPT_NAME}"
chmod +x "${INSTALL_DIR}/${SCRIPT_NAME}"

echo ""
echo -e "${GREEN}${BOLD}✔ neiki installed successfully!${NC}"
echo ""
echo -e "Run ${BOLD}neiki help${NC} to get started."
echo ""
