# jupyter-ai-neurodesk

## Neurodesk Copilot 

How to enable the Neurodesk Copilot using Local LLMs in NeuroDesk environment


### Deploying Neurodesk Copilot model with Dockerfile
```
git clone https://github.com/jnikhilreddy/jupyter-ai-neurodesk
cd jupyter-ai-neurodesk/
docker build -t ollama-neurodesk:latest .
docker run -d -p 11434:11434 ollama-neurodesk:latest
```

