#!/usr/bin/env bash

# Exit immediately if a command exits with non-zero status
set -e

# 1. Check if Ollama is installed
if ! command -v ollama &> /dev/null; then
    echo "Ollama is not installed. Installing Ollama..."
    wget -qO- https://ollama.com/install.sh | bash
fi

# Create the Modelfile dynamically
cat <<EOL > Modelfile
FROM ./neurodesk.gguf

PARAMETER temperature 0.5
PARAMETER stop "<|endoftext|>"

EOL

# 4. Download the neurodesk.gguf file if it doesn't exist
if [ ! -f "neurodesk.gguf" ]; then
    wget "https://huggingface.co/jnikhilreddy/neurodesk-gguf/resolve/main/neurodesk.gguf?download=true" \
         -O neurodesk.gguf
fi


# 5. Start the Ollama server in the background
ollama serve &
sleep 20  # Give the server time to start up

ollama create neurodesk -f Modelfile

# 6. Run both models in the background
ollama run codellama:7b-code &
ollama run neurodesk &

echo "======================================="
echo "Both models are running in the background!"
echo "Ollama server is still running (port 11434 by default)."
echo "======================================="
