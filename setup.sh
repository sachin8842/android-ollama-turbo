#!/bin/bash

# Android Ollama Turbo - Setup Script
# Installs Ollama and creates convenient shortcuts

set -e

echo "🚀 Android Ollama Turbo - Setup Starting..."

# Install Ollama
echo "📦 Installing Ollama..."
curl -fsSL https://ollama.ai/install.sh | sh

# Create shortcuts in .bashrc
echo "⚙️ Creating shortcuts..."

cat >> ~/.bashrc << 'EOF'

# Ollama Turbo Shortcuts
alias turboog='ollama serve --host 0.0.0.0:11434'
alias ogkill='pkill -f "ollama serve"'
alias d3='ollama run d3'
alias q2='ollama run q2'
alias p4='ollama run p4'

EOF

# Install wget if not present
echo "📥 Ensuring wget is installed..."
pkg install -y wget

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Run: termux-setup-storage"
echo "2. Download your model using Part 3 in README"
echo "3. Start with: turboog (in Tab 1)"
echo "4. Chat with: d3 (in Tab 2)"