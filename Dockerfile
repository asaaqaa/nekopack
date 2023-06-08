من asaaqaa / ASAQALIAS: سليم باستر

RUN git clone https://github.com/asaaqaa/ASAAQALIAS.git/root/zthon

WORKDIR / الجذر / زثون

RUN curl -sL https://deb.nodesource.com/setup_16.x | باش -

قم يسمح apt-get install -y nodejs

RUN npm i -g npm

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/zthon/bin:$PATH"

CMD ["python3","-m","zthon"]
