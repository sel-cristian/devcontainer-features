#!/usr/bin/env bash
set -e

echo "🔹 Activating feature 'BMAD-METHOD'"

VERSION="${VERSION:-latest}"

echo "📦 Installing BMAD METHOD..."
if [ "$VERSION" = "latest" ]; then
    npm install -g bmad-method
else
    npm install -g bmad-method@"$VERSION"
fi

echo "✅ Installation complete!"
echo "👉 Run 'bmad' inside the container."

# Comando de prueba
bmad --version || true
