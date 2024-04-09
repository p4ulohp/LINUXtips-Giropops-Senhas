FROM  python:slim-bullseye 
WORKDIR /app
RUN apt-get update -y 
COPY . ./
RUN pip install --no-cache-dir -r requirements.txt 
ENV REDIS_HOST=localhost
EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0"]