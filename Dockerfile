FROM ollama/ollama
COPY Modelfile .
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://huggingface.co/jnikhilreddy/neurodesk-gguf/resolve/main/neurodesk.gguf?download=true \
    -O neurodesk.gguf
RUN /bin/ollama serve & \
    sleep 5 && \
    /bin/ollama create neurodesk -f Modelfile
#To make NeuroDesk Copilot faster replace the above line:/bin/ollama create --quantize q4_K_M neurodesk -f ./Modelfile
EXPOSE 11434
ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]