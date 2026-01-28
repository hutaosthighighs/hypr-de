#!/usr/bin/env bash
set -euo pipefail

OUT="$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ 2>/dev/null || true)"

if [[ -z "${OUT}" ]]; then
  echo '{"text":"?"}'
  exit 0
fi

if grep -q "MUTED" <<<"$OUT"; then
  echo ' '
else
  echo ''
fi
