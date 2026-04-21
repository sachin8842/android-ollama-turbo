#!/bin/bash

echo "🚀 Starting AI Auto-Setup..."

# 1. Update and Install dependencies
pkg update && pkg upgrade -y
pkg install ollama curl wget git -y

# 2. Configure the Turbo Shortcuts (Aliases)
# This adds 'turboog' and 'd3' to the Termux system permanently.
if ! grep -q "turboog" ~/.bashrc; then
cat << 'EOF' >> ~/.bashrc
# --- OLLAMA TURBO ENGINE ---
alias turboog='pkill -9 ollama; sleep 1; termux-wake-lock; export OLLAMA_FLASH_ATTENTION=1; export OLLAMA_KV_CACHE_TYPE=q4_0; export OLLAMA_NUM_PARALLEL=1; export OLLAMA_KEEP_ALIVE=-1; ollama serve'
alias ogkill='pkill -9 ollama; termux-wake-unlock; echo "RAM Cleared and Engine Offline."'
alias d3='ollama run d3'
alias q2='ollama run q2'
EOF
fi

# 3. Setup Storage Access
termux-setup-storage

echo "✅ System Setup Complete!"
echo "👉 Step 1: Type 'source ~/.bashrc'"
echo "👉 Step 2: Open a New Session, type 'turboog', then come back here to build your model."
