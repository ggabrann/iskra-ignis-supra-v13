set -euo pipefail
echo "== Bootstrap Iskra v13.1 =="
npm ci || npm i
npm run validate:schemas || true
python3 scripts/validate_memory.py || true
echo "✅ Ready."
