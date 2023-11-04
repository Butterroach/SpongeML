FROM anibali/pytorch:1.13.1-nocuda

WORKDIR /app

COPY ["requirements.txt", "./"]
RUN pip install -r requirements.txt

COPY . .

CMD [ "python3", "main.py" ]

EXPOSE 6000

ENV TRANSFORMERS_CACHE=/modelcache
VOLUME [ "/modelcache" ]