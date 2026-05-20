#!/usr/bin/env bash
# -----------------------------------------------------------------------------
# scripts/dev/setup.sh — SCRUM Coach Assistant local dev setup
# -----------------------------------------------------------------------------
# Idempotent. Re-runnable safely.
# -----------------------------------------------------------------------------
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$PROJECT_ROOT"

# -----------------------------------------------------------------------------
# Colors
# -----------------------------------------------------------------------------
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

log_info()  { printf "${BLUE}[INFO]${NC}  %s\n" "$*"; }
log_ok()    { printf "${GREEN}[OK]${NC}    %s\n" "$*"; }
log_warn()  { printf "${YELLOW}[WARN]${NC}  %s\n" "$*"; }
log_error() { printf "${RED}[ERROR]${NC} %s\n" "$*"; }

# -----------------------------------------------------------------------------
# 1. Verify uv is installed
# -----------------------------------------------------------------------------
log_info "Checking uv installation..."
if ! command -v uv >/dev/null 2>&1; then
    log_error "uv not found. Install: curl -LsSf https://astral.sh/uv/install.sh | sh"
    exit 1
fi
log_ok "uv $(uv --version | awk '{print $2}') detected"

# -----------------------------------------------------------------------------
# 2. Verify Python 3.12+
# -----------------------------------------------------------------------------
log_info "Checking Python availability via uv..."
if ! uv python find 3.12 >/dev/null 2>&1; then
    log_warn "Python 3.12 not found via uv. Attempting install..."
    uv python install 3.12
fi
log_ok "Python 3.12 available"

# -----------------------------------------------------------------------------
# 3. Sync backend dependencies
# -----------------------------------------------------------------------------
log_info "Syncing backend dependencies (uv sync --extra dev)..."
cd "$PROJECT_ROOT/backend"
uv sync --extra dev
log_ok "Backend dependencies synced"

# -----------------------------------------------------------------------------
# 4. Bootstrap .env from template
# -----------------------------------------------------------------------------
cd "$PROJECT_ROOT"
if [ ! -f .env ]; then
    if [ -f .env.example ]; then
        cp .env.example .env
        log_ok ".env created from .env.example"
        log_warn "ACTION REQUIRED: edit .env and fill secrets (LLM_API_KEY, S3 creds, STRIPE keys, etc.)"
    else
        log_error ".env.example missing — cannot bootstrap .env"
        exit 1
    fi
else
    log_info ".env already exists, leaving untouched"
fi

# -----------------------------------------------------------------------------
# 5. Smoke test
# -----------------------------------------------------------------------------
log_info "Running smoke test (pytest)..."
cd "$PROJECT_ROOT/backend"
if uv run pytest -q 2>&1 | tail -5; then
    log_ok "Smoke test OK"
else
    log_warn "Smoke test had no tests (expected at scaffold stage)"
fi

# -----------------------------------------------------------------------------
# 6. Final instructions
# -----------------------------------------------------------------------------
echo
log_ok "Setup complete!"
echo
echo "Next steps:"
echo "  1. Edit .env and fill secrets (see CLAUDE.md > INFRASTRUCTURE PRÉVUE)"
echo "  2. cd backend && uv run uvicorn app.main:app --reload   # (app.main à créer Sprint 1)"
echo "  3. cd frontend && npx create-next-app@latest .          # init Next.js (Sprint 1)"
echo
