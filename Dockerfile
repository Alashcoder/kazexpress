from  ubuntu:20.04
RUN useradd whiterose
ENV TZ=Asia/Almaty
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir -p /home/whiterose/programing/python/django
WORKDIR /home/whiterose/programing/python/django
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y  jupyter
RUN apt-get install postgresql
RUN apt-get install nginx
RUN git clone https://github.com/Alashcoder/kazexpress.git
RUN pip3 install virtualenv
WORKDIR  /home/whiterose/programing/python/django/kazexpress
RUN chmod +x entry-point.sh 
RUN pip3 install -r requirements.txt    
ENTRYPOINT ["./entry-point.sh"]

