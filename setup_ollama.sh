#!/usr/bin/env bash


# 2. Copy/Place your "Modelfile" in the current directory (or ensure it’s already here).
#    If you need to download or move it from somewhere else, do so here.
#    For example: cp /path/to/Modelfile ./Modelfile
#    (This step just mirrors COPY Modelfile . in the Dockerfile.)

# 3. Download the neurodesk.gguf file
wget "https://huggingface.co/jnikhilreddy/neurodesk-gguf/resolve/main/neurodesk.gguf?download=true" \
     -O neurodesk.gguf

# 4. Start the ollama server in the background
ollama serve &
sleep 5

# 5. Create the codellama:7b-code model using Modelfile
ollama create codellama:7b-code -f Modelfile

echo "Ollama server is running (listening on port 11434 by default)."
