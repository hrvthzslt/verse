FROM ollama/ollama:0.5.12

WORKDIR /root/verse

COPY ./basemodel basemodel

RUN ollama serve & sleep 5 && ollama pull $(cat basemodel)

COPY ./Modelfile Modelfile
RUN sed -i 's/basemodel/"$(cat basemodel)"/g' Modelfile

RUN ollama serve & sleep 5 && ollama create shake -f Modelfile
