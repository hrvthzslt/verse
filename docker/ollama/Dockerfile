FROM ollama/ollama:0.5.12

WORKDIR /root/verse

COPY ./Modelfile Modelfile
COPY ./entrypoint entrypoint
RUN chmod +x entrypoint

ENTRYPOINT ["/root/verse/entrypoint"]
