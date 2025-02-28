FROM ollama/ollama:0.5.12

WORKDIR /root/verse

COPY ./Modelfile.base Modelfile.base
RUN ollama serve & sleep 5 && ollama create basemodel -f Modelfile.base

COPY ./Modelfile.shake Modelfile.shake
RUN ollama serve & sleep 5 && ollama create shake -f Modelfile.shake
