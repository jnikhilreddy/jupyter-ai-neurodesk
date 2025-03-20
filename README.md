# jupyter-ai-neurodesk

## Neurodesk Copilot 

How to enable the Neurodesk Copilot using Local LLMs in NeuroDesk environment


### Deploying Neurodesk Copilot model with Dockerfile
```
docker build -t ollama-neurodesk:latest .
docker run -d -p 11434:11434 ollama-neurodesk:latest
```

