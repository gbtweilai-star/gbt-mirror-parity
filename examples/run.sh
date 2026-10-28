#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mirror_parity info
PYTHONPATH=src python -m gbt_mirror_parity check --payload '{}'
PYTHONPATH=src python -m gbt_mirror_parity run   --payload '{}'
