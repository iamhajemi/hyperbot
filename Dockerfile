FROM hyperbotauthor/chessbaseimage:latest

COPY . .

RUN apt-get update && apt-get install -y wget python3 python3-pip p7zip-full



RUN wget --no-check-certificate "https://onedrive.live.com/download?cid=547CCA53C39C1EA1&resid=547CCA53C39C1EA1%21599&authkey=AMLXM4n_ZwOk7VQ" -O cubail.7z
RUN 7z e cubail.7z
RUN rm cubail.7z
RUN mv cubail.bin elo-3300.bin

RUN bash Dockerfile.sh

CMD ["bash", "startserver.sh"]
