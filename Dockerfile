FROM asaaqaa/Radb:slim-buster

RUN git clone https://github.com/asaaqaa/Radb/tree/Reed.git /root/Reed

WORKDIR /root/Reed

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Reed/bin:$PATH"

CMD ["python3","-m","Reed"]
